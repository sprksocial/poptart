# poptart_xrpc

Low-level XRPC transport for Dart and Flutter.

Use `poptart_xrpc` when you want direct control over query, procedure,
subscription, and descriptor calls. Most apps should use `PoptartClient` from
`poptart`, but this package is the crisp transport layer underneath it.

## Install

```sh
dart pub add poptart_xrpc
```

```dart
import 'package:poptart_xrpc/poptart_xrpc.dart';
```

## Raw Query

```dart
import 'package:poptart_xrpc/poptart_xrpc.dart';

Future<void> main() async {
  final response = await query<String>(
    NSID.parse('com.atproto.server.describeServer'),
    service: 'bsky.social',
  );

  print(response.data);
}
```

## Client Form

```dart
import 'package:poptart_xrpc/poptart_xrpc.dart';

Future<void> main() async {
  final client = XRPCClient(service: 'bsky.social');

  final response = await client.get<String>(
    NSID.parse('com.atproto.server.describeServer'),
  );

  print(response.status);
}
```

## Generated Descriptor Calls

```dart
import 'package:poptart_lex/app/bsky/actor/get_profile.dart'
    as get_profile;
import 'package:poptart_xrpc/poptart_xrpc.dart';

Future<void> main() async {
  final client = XRPCClient();

  final profile = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(profile.data.handle);
}
```

## What It Handles

- GET queries, POST procedures, and websocket subscriptions.
- `XRPCMethodDescriptor` and generated method values.
- Request parameter cleanup and JSON conversion.
- Auth headers, custom header builders, test clients, and timeouts.
- XRPC error mapping for unauthorized, rate limited, invalid request, and server errors.

It is intentionally transport-focused: no OAuth session management, no app-level
state, just the XRPC toaster slot.
