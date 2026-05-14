// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Project imports:
import '../config.dart';
import '../services/rule.dart' as rule;
import 'lex_doc_index.dart';

final class LexRefResolver {
  final LexDocIndex index;
  final LexServiceRuleConfig config;

  const LexRefResolver({required this.index, required this.config});

  LexiconNamespaceRule namespaceRuleFor(final String lexiconId) {
    final matches =
        config.namespaceRules.where((rule) => rule.matches(lexiconId)).toList()
          ..sort(
            (a, b) => b.longestPrefix.length.compareTo(a.longestPrefix.length),
          );

    if (matches.isEmpty) {
      throw ArgumentError('Unsupported lexicon ID: $lexiconId');
    }

    return matches.first;
  }

  String modelImportForRef(final String fromLexiconId, final String ref) {
    return rule.getLexObjectPackagePathFromRef(fromLexiconId, ref);
  }

  String outputPath(final String lexiconId, final String fileName) {
    final namespaceRule = namespaceRuleFor(lexiconId);
    final fileDir = lexiconId.split('.').join('/');
    return '${namespaceRule.homeDir}/$fileDir/$fileName.dart';
  }
}
