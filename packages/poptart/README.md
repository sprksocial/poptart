# poptart

Build frosted AT Protocol and Bluesky apps in Dart and Flutter.

`poptart` gives you the client, auth helpers, session helpers, XRPC transport,
and protocol primitives most apps need to start talking to AT Protocol services.
It is meant to feel quick to pick up: add the package, make a client, and start
shipping something fresh from the toaster.

## Install

Add the main package:

```sh
dart pub add poptart
```

```dart
import 'package:poptart/poptart.dart';
```

If you want generated request and response types, add the package for the
lexicon namespace you use. For Bluesky lexicons:

```sh
dart pub add bluesky_poptart
```

Use `poptart_lex` for `com.atproto.*` lexicons, `bluesky_poptart` for
`app.bsky.*` and `chat.bsky.*`, and the other generated lexicon packages for
their own namespaces.

## What You Can Build

With `poptart`, you can:

- Make anonymous requests to public AT Protocol services.
- Sign in with app passwords for scripts and trusted tools.
- Use OAuth sessions for user-facing apps.
- Call generated lexicon methods when the matching generated package is
  installed.
- Make raw XRPC requests when you need lower-level control.
- Validate handles, DIDs, AT URIs, and NSIDs before sending requests.

## Fetch A Public Profile

This example uses `bluesky_poptart` for the generated `getProfile` method and
typed input/output models.

```dart
import 'package:poptart/poptart.dart';
import 'package:bluesky_poptart/app/bsky/actor/get_profile.dart'
    as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final response = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(response.data.handle);
}
```

Generated method values and `methodDescriptor` values both work with
`client.call(...)`. Use the generated method value for the nicest app code, and
the descriptor when you want a more explicit lower-level primitive.

## App-Password Sign-In

App passwords are a good fit for scripts, automation, and trusted internal
tools. For normal user-facing apps, prefer OAuth.

```dart
import 'package:poptart/poptart.dart';

Future<PoptartClient> signIn(String identifier, String appPassword) async {
  final session = await createSession(
    identifier: identifier,
    password: appPassword,
  );

  return PoptartClient.fromSession(session.data);
}
```

## Use OAuth Sessions

If your app already completed an AT Protocol OAuth flow, pass the session into
`PoptartClient`:

```dart
import 'package:poptart/poptart.dart';

PoptartClient clientFromOAuth(OAuthSession session) {
  return PoptartClient.fromOAuthSession(session);
}
```

`poptart` exports the OAuth types and helpers you need for the flow. Mobile and
desktop apps usually pair them with a browser callback package and secure
storage.

## Make A Raw XRPC Request

Generated methods are comfortable, but you can also call any XRPC method by
NSID.

```dart
import 'package:poptart/poptart.dart';

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final response = await client.get<String>(
    NSID.parse('com.atproto.server.describeServer'),
  );

  print(response.data);
}
```

## Validate Protocol Values

```dart
import 'package:poptart/poptart.dart';

void prepareRecordTarget(String repo, String collection, String rkey) {
  final uri = AtUri.make(repo, collection, rkey);
  final nsid = NSID.parse(collection);

  print(uri.href);
  print(nsid.authority);
}
```

## When To Add Another Package

Most apps can start with `poptart` and the generated package for the lexicon
namespace they call. Add a focused package later only when you know you want a
smaller dependency or a lower-level tool:

- Add `poptart_lex` for generated `com.atproto.*` methods and models.
- Add `bluesky_poptart` for generated `app.bsky.*` and `chat.bsky.*` methods
  and models.
- Add `poptart_did_plc` for direct DID PLC directory lookups.
- Add `poptart_multiformats` for standalone CID parsing.

Docs, source, and issues live at <https://github.com/sprksocial/poptart>.
