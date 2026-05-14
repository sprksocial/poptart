// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/parser.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:poptart_lex_gen/src/build/lex_doc_index.dart';
import 'package:poptart_lex_gen/src/build/lex_ref_resolver.dart';
import 'package:poptart_lex_gen/src/config.dart';

void main() {
  group('LexDocIndex', () {
    test('indexes shallow and deep lexicon ids', () {
      final index = LexDocIndex([
        _doc('com.example.lexicon'),
        _doc('com.example.subdomain.lexicon'),
        _doc('com.example.subdomain.subdomain2.lexicon'),
      ]);

      expect(index.contains('com.example.lexicon'), isTrue);
      expect(index.contains('com.example.subdomain.lexicon'), isTrue);
      expect(
        index.contains('com.example.subdomain.subdomain2.lexicon'),
        isTrue,
      );
    });

    test('rejects duplicate nsids', () {
      expect(
        () => LexDocIndex([
          _doc('com.example.lexicon'),
          _doc('com.example.lexicon'),
        ]),
        throwsA(
          isA<StateError>().having(
            (error) => error.message,
            'message',
            contains('Duplicate lexicon document id: com.example.lexicon'),
          ),
        ),
      );
    });
  });

  group('LexiconNamespaceRule', () {
    test('matches complete namespace segments only', () {
      final rule = _namespaceRule(prefixes: const ['com.example']);

      expect(rule.matches('com.example.lexicon'), isTrue);
      expect(rule.matches('com.example.subdomain.subdomain2.lexicon'), isTrue);
      expect(rule.matches('com.examples.lexicon'), isFalse);
    });

    test('normalizes trailing-dot prefixes', () {
      final rule = _namespaceRule(prefixes: const ['com.example.']);

      expect(rule.matches('com.example.lexicon'), isTrue);
      expect(rule.matches('com.example'), isTrue);
    });
  });

  group('LexRefResolver', () {
    test('selects the longest matching namespace rule', () {
      final resolver = LexRefResolver(
        index: LexDocIndex([_doc('com.example.subdomain.lexicon')]),
        config: LexServiceRuleConfig(
          namespaceRules: [
            _namespaceRule(
              prefixes: const ['com.example'],
              rootPackageName: 'broad',
            ),
            _namespaceRule(
              prefixes: const ['com.example.subdomain'],
              rootPackageName: 'specific',
            ),
          ],
        ),
      );

      expect(
        resolver
            .namespaceRuleFor('com.example.subdomain.lexicon')
            .rootPackageName,
        'specific',
      );
    });

    test('derives output paths from the full nsid segment list', () {
      final resolver = LexRefResolver(
        index: LexDocIndex([_doc('com.example.subdomain.subdomain2.lexicon')]),
        config: LexServiceRuleConfig(
          namespaceRules: [
            _namespaceRule(prefixes: const ['com.example']),
          ],
        ),
      );

      expect(
        resolver.outputPath(
          'com.example.subdomain.subdomain2.lexicon',
          'descriptor',
        ),
        'lib/src/services/codegen/com/example/subdomain/subdomain2/lexicon/descriptor.dart',
      );
    });
  });
}

LexiconDoc _doc(final String id) => LexiconDoc.fromJson({
  'lexicon': 1,
  'id': id,
  'defs': {
    'main': {
      'type': 'object',
      'properties': {
        'name': {'type': 'string'},
      },
    },
  },
});

LexiconNamespaceRule _namespaceRule({
  required final List<String> prefixes,
  final String rootPackageName = 'poptart_lexicon',
}) => LexiconNamespaceRule(
  prefixes: prefixes,
  homeDir: 'lib/src/services/codegen',
  exportCodegenPath: 'src/services/codegen',
  servicePackagePath: 'src/services',
  rootPackageName: rootPackageName,
);
