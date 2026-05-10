# poptart_lexicon

Parser and schema model types for AT Protocol Lexicon documents.

Use `poptart_lexicon` when you need to inspect lexicon JSON directly: code
generators, schema validation tools, documentation builders, and other protocol
workbenches.

## Install

```sh
dart pub add poptart_lexicon
```

```dart
import 'package:poptart_lexicon/poptart_lexicon.dart';
```

## Parse A Lexicon Document

```dart
import 'package:poptart_lexicon/poptart_lexicon.dart';

void main() {
  final doc = LexiconDoc.fromJson({
    'lexicon': 1,
    'id': 'app.example.toast',
    'defs': {
      'main': {
        'type': 'record',
        'key': 'tid',
        'record': {
          'type': 'object',
          'required': ['text', 'createdAt'],
          'properties': {
            'text': {'type': 'string', 'maxLength': 300},
            'createdAt': {'type': 'string', 'format': 'datetime'},
          },
        },
      },
    },
  });

  print(doc.id);
  print(doc.defs.keys);
}
```

## Useful Exports

`poptart_lexicon` exposes typed schema models for:

- Core lexicon documents and user-defined defs.
- Records, objects, arrays, tokens, refs, unions, blobs, bytes, and CID links.
- XRPC queries, procedures, subscriptions, parameters, bodies, and errors.
- Converters used by code generation and schema tooling.

It is the recipe card layer: small, structured, and meant to be consumed by
tools that prepare generated Dart code.
