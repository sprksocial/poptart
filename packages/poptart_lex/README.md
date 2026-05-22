# poptart_lex

Generated Dart types, record models, method values, method descriptors, IDs,
and curated protocol surfaces for `com.atproto.*` lexicons.

`poptart_lex` is the neatly sliced ATProto base lexicon layer. It stays
generated and predictable so app code can use typed requests without
hand-writing JSON.

Use the sibling generated packages for other common namespaces:
`bluesky_poptart` for `app.bsky.*` and `chat.bsky.*`, `ozone_poptart` for
`tools.ozone.*`, `sprk_poptart` for `so.sprk.*`, and `margin_poptart` for
`at.margin.*`.

## Install

```sh
dart pub add poptart
dart pub add poptart_lex
```

## Call A Generated Method

```dart
import 'package:poptart/poptart.dart';
import 'package:poptart_lex/com/atproto/server/describe_server.dart'
    as describe_server;

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final response = await client.call(
    describe_server.comAtprotoServerDescribeServer,
  );

  print(response.data.availableUserDomains);
}
```

`client.call(...)` also accepts `describe_server.methodDescriptor`. Generated
method values are a pleasant default for app code; descriptors are useful for
tooling and generic dispatch.

## Work With Records

```dart
import 'package:poptart_lex/com/atproto/repo/strong_ref.dart';

void main() {
  final ref = RepoStrongRef.fromJson({
    'uri': 'at://did:plc:example/app.bsky.feed.post/3kexample',
    'cid': 'bafyexample',
  });

  print(ref.toJson());
}
```

## Import Shape

Use leaf imports for focused code:

```dart
import 'package:poptart_lex/com/atproto/repo/create_record.dart'
    as create_record;
```

Use generated barrels when you want broader namespace access:

```dart
import 'package:poptart_lex/docs.dart';
import 'package:poptart_lex/ids.dart';
```

Generated files are checked in for consumers and should not be edited by hand.
Regenerate them from the lexicon sources when changing the protocol surface.
