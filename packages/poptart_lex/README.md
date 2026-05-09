# poptart_lex

Generated Dart record types, generated XRPC method values, method descriptors,
IDs, and curated protocol surfaces for AT Protocol ecosystem lexicons.

```dart
import 'package:poptart/poptart.dart';
import 'package:poptart_lex/app/bsky/actor/get_profile.dart' as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();
  final response = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(response.data.handle);
}
```

`client.call` also accepts `get_profile.methodDescriptor`. Generated method
values are a nice default for domain/subdomain entrypoints; descriptors remain
the explicit lower-level primitive.
