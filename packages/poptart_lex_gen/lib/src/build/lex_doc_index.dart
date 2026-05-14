// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/parser.dart';

final class LexDocIndex {
  final Map<String, LexiconDoc> _docs;

  LexDocIndex(final Iterable<LexiconDoc> docs) : _docs = _index(docs);

  Iterable<LexiconDoc> get docs => _docs.values;

  LexiconDoc get(final String nsid) {
    final doc = _docs[nsid];
    if (doc == null) {
      throw ArgumentError('Missing lexicon document: $nsid');
    }

    return doc;
  }

  bool contains(final String nsid) => _docs.containsKey(nsid);

  static Map<String, LexiconDoc> _index(final Iterable<LexiconDoc> docs) {
    final indexed = <String, LexiconDoc>{};
    for (final doc in docs) {
      final id = doc.id.toString();
      if (indexed.containsKey(id)) {
        throw StateError('Duplicate lexicon document id: $id');
      }

      indexed[id] = doc;
    }

    return Map.unmodifiable(indexed);
  }
}
