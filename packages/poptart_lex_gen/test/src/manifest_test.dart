// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

void main() {
  group('LexiconManifest', () {
    test('loads multiple output packages from YAML', () {
      final manifestFile = _writeManifest('''
packages:
  - name: poptart_lex
    output: lex
    roots:
      - app.bsky.
      - com.atproto.
  - name: sprk_lex
    roots:
      - so.sprk.
''');

      final manifest = LexiconManifest.load(manifestFile.path);

      expect(manifest.packages, hasLength(2));
      expect(manifest.packages.first.name, 'poptart_lex');
      expect(manifest.packages.first.output, 'lex');
      expect(manifest.packages.first.roots, ['app.bsky.', 'com.atproto.']);
      expect(manifest.services, ['app.bsky.', 'com.atproto.', 'so.sprk.']);
    });

    test('builds a LexGenConfig with package ownership rules', () {
      final manifestFile = _writeManifest('''
packages:
  - name: poptart_lex
    output: bluesky
    roots:
      - app.bsky.
  - name: sprk_lex
    roots:
      - so.sprk.
externalPackages:
  - name: poptart_atproto
    roots:
      - com.atproto.
''');

      final config = lexGenConfigFromManifest(
        manifestPath: manifestFile.path,
        lexiconsPath: 'lexicons',
        packagesPath: 'packages',
      );

      expect(config.services, ['app.bsky.', 'so.sprk.']);
      expect(config.packages, ['packages/bluesky', 'packages/sprk_lex']);

      final rules = config.serviceRuleConfig.namespaceRules;
      expect(rules.first.homeDir, 'packages/bluesky/lib');
      expect(rules.first.rootPackageName, 'poptart_lex');
      expect(rules[1].matches('so.sprk.feed.defs'), isTrue);
      expect(rules.last.matches('com.atproto.repo.defs'), isTrue);
      expect(rules.last.rootPackageName, 'poptart_atproto');
      expect(
        config.serviceRuleConfig.namespaceRules[1].matches(
          'so.spark.feed.defs',
        ),
        isFalse,
      );
    });

    test('rejects package entries without roots', () {
      final manifestFile = _writeManifest('''
packages:
  - name: poptart_lex
''');

      expect(
        () => LexiconManifest.load(manifestFile.path),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('must contain a roots list'),
          ),
        ),
      );
    });
  });
}

File _writeManifest(final String content) {
  final directory = Directory.systemTemp.createTempSync(
    'poptart_lex_gen_test_',
  );
  addTearDown(() {
    if (directory.existsSync()) directory.deleteSync(recursive: true);
  });

  final file = File('${directory.path}/manifest.yaml');
  file.writeAsStringSync(content);
  return file;
}
