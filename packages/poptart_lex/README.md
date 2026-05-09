# poptart_lex

Generated Dart record types, XRPC method descriptors, IDs, and curated protocol
surfaces for AT Protocol ecosystem lexicons.

```dart
import 'package:poptart/poptart.dart';
import 'package:poptart_lex/app_bsky_actor_getprofile.dart' as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();
  final response = await client.call(
    get_profile.methodDescriptor,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(response.data.handle);
}
```
