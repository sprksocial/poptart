// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:test/test.dart';

import 'package:poptart_lexicon/src/types/core/lexicon_doc.dart';
import 'utils.dart' as util;

const lexicons = [
  {
    'lexicon': 1,
    'id': 'app.bsky.feed.like',
    'defs': {
      'main': {
        'type': 'record',
        'description': 'A declaration of a like.',
        'key': 'tid',
        'record': {
          'type': 'object',
          'required': ['subject', 'createdAt'],
          'properties': {
            'subject': {'type': 'ref', 'ref': 'com.atproto.repo.strongRef'},
            'createdAt': {'type': 'string', 'format': 'datetime'},
          },
        },
      },
    },
  },
];

void main() {
  for (final lexicon in lexicons) {
    test(lexicon['id'], () {
      final actual = LexiconDoc.fromJson(lexicon);

      expect(
        util.equals(actual.toJson(), jsonDecode(jsonEncode(lexicon))),
        isTrue,
      );
    });
  }
}
