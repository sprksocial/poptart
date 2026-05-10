# poptart_primitives

AT Protocol primitive types and validation helpers for Dart and Flutter.

Use this package when you need the small, dependable ingredients: handles, DIDs,
AT URIs, NSIDs, and validation functions. It has no opinions about clients or
network calls.

## Install

```sh
dart pub add poptart_primitives
```

```dart
import 'package:poptart_primitives/at_primitives.dart';
```

## Handles And DIDs

```dart
import 'package:poptart_primitives/at_primitives.dart';

void main() {
  final handle = normalizeAndEnsureValidHandle('Bsky.App');

  ensureValidDid('did:plc:iijrtk7ocored6zuziwmqq3c');

  print(handle); // bsky.app
  print(isValidHandle('not a handle')); // false
}
```

## AT URIs

```dart
import 'package:poptart_primitives/at_primitives.dart';

void main() {
  final uri = AtUri.parse(
    'at://bsky.app/app.bsky.feed.post/3jzfcijpj2z2a',
  );

  print(uri.hostname);
  print(uri.collection);
  print(uri.rkey);
}
```

## NSIDs

```dart
import 'package:poptart_primitives/at_primitives.dart';

void main() {
  final id = NSID.parse('app.bsky.actor.getProfile');
  final created = NSID.create('bsky.app.actor', 'getProfile');

  print(id.authority); // actor.bsky.app
  print(created); // app.bsky.actor.getProfile
}
```

## Focused Imports

You can import the whole primitive set:

```dart
import 'package:poptart_primitives/at_primitives.dart';
```

Or only the pastry crumb you need:

```dart
import 'package:poptart_primitives/at_identifier.dart';
import 'package:poptart_primitives/at_uri.dart';
import 'package:poptart_primitives/nsid.dart';
```

This package replaces the old individual primitive packages with one cohesive
Poptart surface.
