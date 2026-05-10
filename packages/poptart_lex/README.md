# poptart_lex

Generated Dart types, record models, method values, method descriptors, IDs,
and curated protocol surfaces for AT Protocol ecosystem lexicons.

`poptart_lex` is the neatly sliced lexicon layer. It stays generated and
predictable so app code can use typed requests without hand-writing JSON.

## Install

```sh
dart pub add poptart
dart pub add poptart_lex
```

## Call A Generated Method

```dart
import 'package:poptart/poptart.dart';
import 'package:poptart_lex/app/bsky/actor/get_profile.dart'
    as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final response = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(response.data.displayName);
}
```

`client.call(...)` also accepts `get_profile.methodDescriptor`. Generated method
values are a pleasant default for app code; descriptors are useful for tooling
and generic dispatch.

## Work With Records

```dart
import 'package:poptart_lex/app/bsky/feed/post.dart';

void main() {
  final post = FeedPostRecord(
    text: 'Fresh out of the toaster.',
    createdAt: DateTime.now().toUtc(),
    langs: const ['en'],
  );

  print(post.toJson());
}
```

## Import Shape

Use leaf imports for focused code:

```dart
import 'package:poptart_lex/app/bsky/actor/get_profile.dart'
    as get_profile;
```

Use generated barrels when you want broader namespace access:

```dart
import 'package:poptart_lex/docs.dart';
import 'package:poptart_lex/ids.dart';
```

Generated files are checked in for consumers and should not be edited by hand.
Regenerate them from the lexicon sources when changing the protocol surface.
