// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import '../config.dart';
import 'object/at_uri_extension.dart';
import 'object/repo_commit_handler.dart';

void generateLexTools(
  final List<LexiconNamespaceRule> namespaceRules,
  final List<LexiconDoc> docs,
) {
  return _LexToolsGenerator(namespaceRules, docs).execute();
}

final class _LexToolsGenerator {
  final List<LexiconNamespaceRule> namespaceRules;
  final List<LexiconDoc> docs;

  const _LexToolsGenerator(this.namespaceRules, this.docs);

  void execute() {
    for (final rule in namespaceRules) {
      if (rule.homeDir.isEmpty) continue;

      final recordLexiconIds = _getRecordLexiconIds(rule);
      if (recordLexiconIds.isEmpty) continue;

      final homeDir = '${rule.homeDir}/src/tools';

      File('$homeDir/at_uri_extension.dart')
        ..createSync(recursive: true)
        ..writeAsStringSync(AtUriExtension(recordLexiconIds).format());

      File('$homeDir/repo_commit_handler.dart')
        ..createSync(recursive: true)
        ..writeAsStringSync(RepoCommitHandler(recordLexiconIds).format());
    }
  }

  List<String> _getRecordLexiconIds(final LexiconNamespaceRule rule) {
    final recordLexiconIds = <String>[];

    for (final doc in docs) {
      if (rule.matches(doc.id.toString()) && _isRecord(doc)) {
        recordLexiconIds.add(doc.id.toString());
      }
    }

    return recordLexiconIds;
  }

  bool _isRecord(final LexiconDoc doc) {
    return _isDocA<ULexUserTypeRecord>(doc);
  }

  bool _isDocA<T>(final LexiconDoc doc) {
    for (final def in doc.defs.entries) {
      if (def.value is T) {
        return true;
      }
    }

    return false;
  }
}
