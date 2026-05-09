// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import '../utils.dart';
import 'object/lex_type.dart';
import 'rule.dart' as rule;

void generateLexEntrypoints(
  final List<String> roots,
  final List<LexType> types,
  final List<LexiconDoc> docs,
) {
  return _LexEntrypointGenerator(roots, types, docs).execute();
}

final class _LexEntrypointGenerator {
  final List<String> roots;
  final List<LexType> types;
  final List<LexiconDoc> docs;

  const _LexEntrypointGenerator(this.roots, this.types, this.docs);

  void execute() {
    final leaves = _buildLeaves();

    for (final leaf in leaves.values) {
      _writeLeafEntrypoint(leaf);
    }

    _writeAggregateEntrypoints(leaves.values.toList());
  }

  Map<String, _LeafEntrypoint> _buildLeaves() {
    final leaves = <String, _LeafEntrypoint>{};

    for (final doc in docs.where(_matchesRoots)) {
      final lexiconId = doc.id.toString();
      final dependencies = <String>{};
      for (final type in types) {
        if (type.lexiconId != lexiconId || type.isShouldNotBeGenerated()) {
          continue;
        }

        dependencies.add(
          '${rule.getPublicFileDir(lexiconId)}/${type.getFileName()}.dart',
        );
      }

      final descriptor = File(
        '${rule.getHomeDir(lexiconId)}/${rule.getPublicFileDir(lexiconId)}/descriptor.dart',
      );
      if (descriptor.existsSync()) {
        dependencies.add('${rule.getPublicFileDir(lexiconId)}/descriptor.dart');
      }

      if (dependencies.isEmpty) continue;

      leaves[lexiconId] = _LeafEntrypoint(
        lexiconId: lexiconId,
        packageName: rule.getRootPackageName(lexiconId),
        publicPath: rule.getPublicFileDir(lexiconId),
        dependencies: dependencies.toList()..sort(),
        hasMethodDescriptor: _hasMethodDescriptor(doc),
      );
    }

    return leaves;
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

  bool _hasMethodDescriptor(final LexiconDoc doc) {
    for (final def in doc.defs.values) {
      if (def is ULexUserTypeXrpcQuery ||
          def is ULexUserTypeXrpcProcedure ||
          def is ULexUserTypeXrpcSubscription) {
        return true;
      }
    }

    return false;
  }

  void _writeLeafEntrypoint(final _LeafEntrypoint leaf) {
    final buffer = StringBuffer()
      ..writeln(kHeaderHint)
      ..writeln(kHeader);

    final leafParts = leaf.publicPath.split('/');
    final leafDir = leafParts.sublist(0, leafParts.length - 1).join('/');

    for (final dependency in leaf.dependencies) {
      final relative = dependency.substring('$leafDir/'.length);
      buffer.writeln("export '$relative';");
    }

    File('packages/${leaf.packageName}/lib/${leaf.publicPath}.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(buffer.toString());
  }

  void _writeAggregateEntrypoints(final List<_LeafEntrypoint> leaves) {
    final aggregates = <String, List<_LeafEntrypoint>>{};

    for (final leaf in leaves) {
      if (!leaf.hasMethodDescriptor) continue;

      final parentDir = rule.getPublicParentDir(leaf.lexiconId);
      if (parentDir.isEmpty) continue;

      aggregates.putIfAbsent(parentDir, () => []).add(leaf);
    }

    for (final entry in aggregates.entries) {
      final packageName = entry.value.first.packageName;
      final buffer = StringBuffer()..writeln(kHeaderHint);

      final methodLeaves = entry.value
        ..sort((a, b) => a.publicPath.compareTo(b.publicPath));

      for (final leaf in methodLeaves) {
        buffer.writeln(
          "import '${rule.getPublicPackagePath(leaf.lexiconId)}' as ${_aliasFor(leaf.lexiconId)};",
        );
      }

      buffer.writeln();

      buffer
        ..writeln()
        ..writeln(kHeader);

      for (final leaf in methodLeaves) {
        buffer.writeln(
          'final ${rule.getMethodName(leaf.lexiconId)} = ${_aliasFor(leaf.lexiconId)}.${rule.getMethodName(leaf.lexiconId)};',
        );
        buffer.writeln(
          'final ${rule.getMethodName(leaf.lexiconId)}MethodDescriptor = ${_aliasFor(leaf.lexiconId)}.methodDescriptor;',
        );
      }

      File(rule.getAggregateEntryPointPath(packageName, entry.key))
        ..createSync(recursive: true)
        ..writeAsStringSync(buffer.toString());
    }
  }

  String _aliasFor(final String lexiconId) {
    return '_${lexiconId.split('.').map(toFirstUpperCase).join()}';
  }
}

final class _LeafEntrypoint {
  final String lexiconId;
  final String packageName;
  final String publicPath;
  final List<String> dependencies;
  final bool hasMethodDescriptor;

  const _LeafEntrypoint({
    required this.lexiconId,
    required this.packageName,
    required this.publicPath,
    required this.dependencies,
    required this.hasMethodDescriptor,
  });
}
