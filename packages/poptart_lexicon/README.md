# poptart_lexicon

Parser and schema model types for AT Protocol Lexicon documents.

```dart
import 'package:poptart_lexicon/poptart_lexicon.dart';

void main() {
  final doc = LexiconDoc.fromJson({
    'lexicon': 1,
    'id': 'app.bsky.feed.like',
    'defs': {
      'main': {
        'type': 'record',
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
  });

  print(doc.id);
  print(doc.defs.keys);
}
```
