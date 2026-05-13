// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:poptart_lexicon/parser.dart' as lex;

// Project imports:
import 'fmt/lex_known_values_generator.dart';
import 'fmt/lex_object_generator.dart';
import 'fmt/lex_record_generator.dart';
import 'fmt/lex_union_generator.dart';
import 'fmt/lex_xrpc_procedure_generator.dart';
import 'fmt/lex_xrpc_query_generator.dart';
import 'fmt/lex_xrpc_subscription_generator.dart';
import 'object/lex_type.dart';
import 'rule.dart' as rule;

List<LexType> generateLexTypes(
  final List<String> services,
  final List<String> packages,
  final List<lex.LexiconDoc> docs,
) {
  return _LexTypeGenerator(services, packages, docs).execute();
}

final class _LexTypeGenerator {
  final List<String> services;
  final List<String> packages;
  final List<lex.LexiconDoc> docs;

  const _LexTypeGenerator(this.services, this.packages, this.docs);

  List<LexType> execute() {
    _cleanWorkspace();

    final types = <LexType>[];
    final filteredLexicons = _filterLexicons(docs, services);

    final mainVariants = _checkMainVariants(filteredLexicons);

    // Load lexicons from the specified directory
    for (final doc in filteredLexicons) {
      // Generate LexObjects for each definition in the lexicon
      for (final def in doc.defs.entries) {
        if (def.value is lex.ULexUserTypeObject) {
          final data = def.value.data as lex.LexObject;
          if (rule.isDeprecated(data.description)) continue;

          _aggregateTypes(
            types,
            generateLexObject(
              doc.id,
              def.key,
              def.value.data as lex.LexObject,
              mainVariants,
            ),
          );
        } else if (def.value is lex.ULexUserTypeArray) {
          final data = def.value.data as lex.LexArray;
          if (rule.isDeprecated(data.description)) continue;

          final refVariant = data.items.whenOrNull(refVariant: (data) => data);
          if (refVariant == null) continue;

          final refUnion = refVariant.whenOrNull(refUnion: (data) => data);
          if (refUnion == null) continue;

          _aggregateTypes(
            types,
            generateLexUnion(doc.id, def.key, '', refUnion, mainVariants),
          );
        } else if (def.value is lex.ULexUserTypeRecord) {
          final data = def.value.data as lex.LexRecord;
          if (rule.isDeprecated(data.description)) continue;

          _aggregateTypes(
            types,
            generateLexRecord(
              doc.id,
              def.key,
              def.value.data as lex.LexRecord,
              mainVariants,
            ),
          );
        } else if (def.value is lex.ULexUserTypeString) {
          _aggregateTypes(
            types,
            generateLexKnownValues(
              doc.id,
              def.key,
              def.value.data as lex.LexString,
              mainVariants,
            ),
          );
        } else if (def.value is lex.ULexUserTypeXrpcQuery) {
          final type = generateLexXrpcQuery(
            doc.id,
            def.key,
            def.value.data as lex.LexXrpcQuery,
            mainVariants,
          );

          if (type == null) continue;

          _aggregateTypes(types, type.$1);
          _aggregateTypes(types, type.$2);
        } else if (def.value is lex.ULexUserTypeXrpcProcedure) {
          final type = generateLexXrpcProcedure(
            doc.id,
            def.key,
            def.value.data as lex.LexXrpcProcedure,
            mainVariants,
          );

          if (type == null) continue;

          _aggregateTypes(types, type.$1);
          _aggregateTypes(types, type.$2);
        } else if (def.value is lex.ULexUserTypeXrpcSubscription) {
          final type = generateLexXrpcSubscription(
            doc.id,
            def.key,
            def.value.data as lex.LexXrpcSubscription,
            mainVariants,
          );

          if (type == null) continue;

          _aggregateTypes(types, type.$1);
          _aggregateTypes(types, type.$2);
        }
      }
    }

    for (final type in types) {
      if (type.isShouldNotBeGenerated()) continue;

      File(type.getFilePath())
        ..createSync(recursive: true)
        ..writeAsStringSync(type.format());
    }

    return types;
  }

  void _cleanWorkspace() {
    for (final package in packages) {
      final packageDir = package.contains('/') ? package : 'packages/$package';
      final dir = Directory('$packageDir/lib/src/services/codegen');
      if (dir.existsSync()) dir.deleteSync(recursive: true);

      final toolsDir = Directory('$packageDir/lib/src/tools');
      if (toolsDir.existsSync()) toolsDir.deleteSync(recursive: true);

      for (final topLevel in const ['app', 'chat', 'com', 'tools']) {
        final generatedDir = Directory('$packageDir/lib/$topLevel');
        if (generatedDir.existsSync()) generatedDir.deleteSync(recursive: true);

        final generatedFile = File('$packageDir/lib/$topLevel.dart');
        if (generatedFile.existsSync()) generatedFile.deleteSync();
      }

      final $services = services.map((e) => e.split('.').join('_')).toList();
      final libDir = Directory('$packageDir/lib/');
      if (!libDir.existsSync()) continue;

      for (final file in libDir.listSync()) {
        if (file is! File) continue;

        for (final service in $services) {
          if (file.path.contains(service)) {
            file.deleteSync();
            break;
          }
        }
      }
    }
  }

  List<lex.LexiconDoc> _filterLexicons(
    final List<lex.LexiconDoc> lexicons,
    final List<String> roots,
  ) {
    return lexicons.where((lexicon) {
      final id = lexicon.id.toString();
      return roots.any((root) {
        final normalized = root.endsWith('.')
            ? root.substring(0, root.length - 1)
            : root;
        return id == normalized || id.startsWith('$normalized.');
      });
    }).toList();
  }

  List<String> _checkMainVariants(final List<lex.LexiconDoc> lexicons) {
    final mainVariants = <String>{};
    for (final doc in lexicons) {
      for (final def in doc.defs.entries) {
        if (def.value is! lex.ULexUserTypeObject) {
          continue;
        }

        if (def.key == 'main') {
          mainVariants.add(doc.id.toString());
        }
      }
    }

    return mainVariants.toList();
  }

  void _aggregateTypes(final List<LexType> types, final LexType? type) {
    if (type == null) return;

    if (type.state != LexTypeState.message) {
      types.add(type);
    }

    final nested = type.getNestedTypes();
    if (nested.isNotEmpty) {
      types.addAll(nested);
    }
  }
}
