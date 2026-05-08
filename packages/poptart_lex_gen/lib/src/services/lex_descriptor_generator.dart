// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import '../build/generated_file.dart';
import '../utils.dart';
import 'object/lex_type.dart';
import 'rule.dart' as rule;

List<GeneratedFile> generateLexDescriptors(
  final List<String> roots,
  final List<LexType> types,
  final List<LexiconDoc> docs,
) {
  return _LexDescriptorGenerator(roots, types, docs).execute();
}

final class _LexDescriptorGenerator {
  final List<String> roots;
  final List<LexType> types;
  final List<LexiconDoc> docs;

  const _LexDescriptorGenerator(this.roots, this.types, this.docs);

  List<GeneratedFile> execute() {
    final files = <GeneratedFile>[];
    for (final doc in docs.where(_matchesRoots)) {
      final content = _descriptorContent(doc);
      if (content == null) continue;

      final path =
          '${rule.getHomeDir(doc.id.toString())}/'
          '${doc.id.toString().split('.').join('/')}/descriptor.dart';
      files.add(GeneratedFile(path: path, content: content));
      _appendDescriptorExport(doc.id.toString());
    }

    return files;
  }

  bool _matchesRoots(final LexiconDoc doc) {
    final id = doc.id.toString();
    return roots.any((root) {
      final normalized = root.endsWith('.')
          ? root.substring(0, root.length - 1)
          : root;
      return id == normalized || id.startsWith('$normalized.');
    });
  }

  String? _descriptorContent(final LexiconDoc doc) {
    final docId = doc.id.toString();
    final docTypes = types
        .where(
          (type) => type.lexiconId == docId && !type.isShouldNotBeGenerated(),
        )
        .toList();
    final descriptors = <String>[];
    final imports = <String>{
      "import 'package:poptart_xrpc/poptart_xrpc.dart';",
    };

    for (final type in docTypes) {
      if (type.state != LexTypeState.object &&
          type.state != LexTypeState.record) {
        continue;
      }

      imports.add("import './${type.getFileName()}.dart';");
      descriptors.add(_schemaDescriptor(type, _recordKey(type)));
    }

    final methodDescriptor = _methodDescriptor(doc, imports);
    if (methodDescriptor != null) descriptors.add(methodDescriptor);
    if (descriptors.isEmpty) return null;

    final sortedImports = imports.toList()..sort();
    return '''$kHeaderHint

${sortedImports.join('\n')}

$kHeader

${descriptors.join('\n\n')}
''';
  }

  String _schemaDescriptor(final LexType type, final String? recordKey) {
    final typeName = type.getTypeName();
    final descriptorType = type.state == LexTypeState.record
        ? 'XRPCRecordDescriptor'
        : 'XRPCObjectDescriptor';
    final converterName = type.state == LexTypeState.record
        ? '${typeName}Converter'
        : '${typeName}Converter';
    final keyLine = type.state == LexTypeState.record
        ? "\n  key: '${recordKey ?? 'tid'}',"
        : '';

    return '''final ${toFirstLowerCase(typeName)}Descriptor = $descriptorType<$typeName>(
  nsid: '${type.lexiconId}',
  defName: '${type.defName}',
  fromJson: (json) => const $converterName().fromJson(json.cast<String, dynamic>()),
  toJson: const $converterName().toJson,
  matches: $typeName.validate,$keyLine
);''';
  }

  String? _recordKey(final LexType type) {
    if (type.state != LexTypeState.record) return null;

    final def = docs
        .where((doc) => doc.id.toString() == type.lexiconId)
        .firstOrNull
        ?.defs[type.defName];

    return def?.whenOrNull(record: (data) => data.key);
  }

  String? _methodDescriptor(final LexiconDoc doc, final Set<String> imports) {
    final api = _apiDef(doc);
    if (api == null) return null;

    final id = doc.id.toString();
    final input = _relatedType(id, const [
      LexTypeState.input,
      LexTypeState.record,
    ]);
    final output = _relatedType(id, const [LexTypeState.output]);
    if ((input?.isBytes() ?? false) || (output?.isBytes() ?? false)) {
      imports.add("import 'dart:typed_data';");
    }

    final kind = switch (api) {
      ULexUserTypeXrpcQuery() => 'XRPCMethodKind.query',
      ULexUserTypeXrpcProcedure() => 'XRPCMethodKind.procedure',
      ULexUserTypeXrpcSubscription() => 'XRPCMethodKind.subscription',
      _ => null,
    };
    if (kind == null) return null;

    final paramsType =
        api is ULexUserTypeXrpcQuery || api is ULexUserTypeXrpcSubscription
        ? _typeName(input)
        : 'EmptyData';
    final inputType = api is ULexUserTypeXrpcProcedure
        ? _typeName(input)
        : 'EmptyData';
    final outputType = api is ULexUserTypeXrpcSubscription
        ? 'Object'
        : _typeName(output);

    _addTypeImport(doc.id.toString(), input, imports);
    _addTypeImport(doc.id.toString(), output, imports);

    final paramsLines = paramsType == 'EmptyData' || (input?.isBytes() ?? false)
        ? ''
        : _codecLines('parameters', input!);
    final inputLines = inputType == 'EmptyData' || (input?.isBytes() ?? false)
        ? ''
        : _codecLines('input', input!);
    final outputLines =
        outputType == 'EmptyData' ||
            outputType == 'Object' ||
            (output?.isBytes() ?? false)
        ? ''
        : _codecLines('output', output!);
    final inputEncodingLine = input?.isBytes() ?? false
        ? "\n  inputEncoding: '${input!.getEncoding()}',"
        : '';
    final errors = _errors(api);

    return '''final methodDescriptor = XRPCMethodDescriptor<$paramsType, $inputType, $outputType>(
  nsid: NSID.parse('$id'),
  kind: $kind,$paramsLines$inputLines$outputLines$inputEncodingLine
  errors: $errors,
);''';
  }

  String _typeName(final LexType? type) {
    if (type == null) return 'EmptyData';
    if (type.isBytes()) return 'Uint8List';
    return type.getTypeName();
  }

  String _codecLines(final String prefix, final LexType type) {
    final typeName = type.getTypeName();
    final converter = '${typeName}Converter';
    return '''
  ${prefix}FromJson: (json) => const $converter().fromJson(json.cast<String, dynamic>()),
  ${prefix}ToJson: const $converter().toJson,''';
  }

  String _errors(final LexUserType api) {
    final errors = api.whenOrNull(
      xrpcQuery: (data) => data.errors,
      xrpcProcedure: (data) => data.errors,
      xrpcSubscription: (data) => data.errors,
    );
    if (errors == null || errors.isEmpty) return 'const []';

    final names = errors.map((error) => "'${error.name}'").join(', ');
    return 'const [$names]';
  }

  void _addTypeImport(
    final String currentLexiconId,
    final LexType? type,
    final Set<String> imports,
  ) {
    if (type == null || type.isShouldNotBeGenerated()) return;

    if (type.lexiconId == currentLexiconId) {
      imports.add("import './${type.getFileName()}.dart';");
      return;
    }

    final relativeDir = _relativeDir(
      currentLexiconId.split('.').join('/'),
      type.lexiconId.split('.').join('/'),
    );
    imports.add("import '$relativeDir/${type.getFileName()}.dart';");
  }

  LexType? _relatedType(
    final String lexiconId,
    final List<LexTypeState> states, {
    final String? refDefName,
  }) {
    for (final type in types) {
      if (refDefName != null) {
        if (type.lexiconId == lexiconId &&
            type.defName == refDefName &&
            states.contains(type.state)) {
          return type;
        }
      } else if (type.lexiconId == lexiconId && states.contains(type.state)) {
        final ref = type.getRef();
        if (ref == null) return type;

        if (ref.startsWith('#')) {
          return _relatedType(lexiconId, const [
            LexTypeState.object,
            LexTypeState.record,
          ], refDefName: ref.substring(1));
        }

        final parts = ref.split('#');
        return _relatedType(parts.first, const [
          LexTypeState.object,
          LexTypeState.record,
        ], refDefName: parts.last);
      }
    }

    return null;
  }

  LexUserType? _apiDef(final LexiconDoc doc) {
    for (final def in doc.defs.values) {
      if (def is ULexUserTypeXrpcQuery ||
          def is ULexUserTypeXrpcProcedure ||
          def is ULexUserTypeXrpcSubscription) {
        return def;
      }
    }

    return null;
  }

  void _appendDescriptorExport(final String lexiconId) {
    final root = rule.getRootPackageName(lexiconId);
    final name = rule.getPackageName(lexiconId);
    final file = File('packages/$root/lib/$name.dart');
    final export =
        "export '${rule.getLexObjectAbsolutePath(lexiconId, 'descriptor')}';";

    if (!file.existsSync()) {
      file
        ..createSync(recursive: true)
        ..writeAsStringSync('$kHeaderHint\n\n$kHeader\n\n$export\n');
      return;
    }

    final content = file.readAsStringSync();
    if (content.contains(export)) return;
    file.writeAsStringSync('$content$export\n');
  }

  String _relativeDir(final String fromDir, final String toDir) {
    final from = fromDir.split('/').where((e) => e.isNotEmpty).toList();
    final to = toDir.split('/').where((e) => e.isNotEmpty).toList();

    var shared = 0;
    while (shared < from.length &&
        shared < to.length &&
        from[shared] == to[shared]) {
      shared++;
    }

    final up = List.filled(from.length - shared, '..');
    final down = to.sublist(shared);
    final parts = [...up, ...down];
    return parts.isEmpty ? '.' : parts.join('/');
  }
}
