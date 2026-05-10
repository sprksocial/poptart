# poptart_core

Core client, session, retry, blob, CAR, and shared protocol utilities for the
Poptart package family.

Most applications should import `package:poptart/poptart.dart`. Reach for
`poptart_core` when you are building a package, test harness, or framework layer
that needs the warm filling under the main app-facing facade.

## Install

```sh
dart pub add poptart_core
```

```dart
import 'package:poptart_core/poptart_core.dart';
```

## App-Password Sessions

```dart
import 'package:poptart_core/poptart_core.dart';

Future<PoptartClient> createClient(String handle, String appPassword) async {
  final response = await createSession(
    identifier: handle,
    password: appPassword,
  );

  return PoptartClient.fromSession(response.data);
}
```

## Service Contexts

`ServiceContext` is useful when you are building reusable clients and want the
same transport behavior that powers `PoptartClient`.

```dart
import 'package:poptart_core/poptart_core.dart';

Future<void> describeServer() async {
  final ctx = ServiceContext(
    retryConfig: RetryConfig(maxAttempts: 2),
  );

  final response = await ctx.get<String>(
    NSID.parse('com.atproto.server.describeServer'),
  );

  print(response.data);
}
```

## Retry Configuration

```dart
import 'package:poptart_core/poptart_core.dart';

final client = PoptartClient.anonymous(
  retryConfig: RetryConfig(
    maxAttempts: 3,
    jitter: Jitter(minInSeconds: 1, maxInSeconds: 3),
  ),
);
```

## Utility Types

`poptart_core` also exports:

- `Session`, `OAuthSession`, and JWT helpers.
- `Blob` and `BlobRef` models.
- `AtUriConverter`, `NSIDConverter`, and blob converters.
- `CARDecoder` for repository archive data.
- `XRPCResponse`, `XRPCMethodDescriptor`, `Subscription`, and related transport types.
- `CID` through `poptart_multiformats`.

Use this package when you need stable building blocks, not just the quick
breakfast import.
