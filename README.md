# Poptart

Poptart is a Dart and Flutter SDK for building AT Protocol applications. It
packages a shared client, OAuth helpers, XRPC request utilities, DID PLC tools,
protocol primitives, and optional generated lexicon packages behind a
consumer-friendly package family.

Most apps should start with the umbrella package:

```sh
dart pub add poptart
dart pub add poptart_lex # for generated methods, descriptors, and models
```

```dart
import 'package:poptart/poptart.dart';
```

## What To Install

| Package | Use it when... |
| --- | --- |
| `poptart` | You are building a normal Dart or Flutter app and want the app-facing client, sessions, OAuth, raw XRPC, primitives, and the curated ATProto lexicon surface. |
| `poptart_lex` | You need focused generated lexicon barrels, record models, generated method values, method descriptors, generated IDs, or bundled lexicon documents. |
| `poptart_lexicon` | You need to parse raw Lexicon documents with `LexiconDoc` and schema model types. |
| `poptart_oauth` | You are adding AT Protocol OAuth sign-in and session refresh to an app. |
| `poptart_primitives` | You only need handles, DIDs, AT URIs, NSIDs, and validation helpers. |
| `poptart_xrpc` | You are building lower-level XRPC calls without generated descriptors. |
| `poptart_did_plc` | You need DID PLC documents, operation logs, audit logs, caching, or streaming. |
| `poptart_multiformats` | You need CID or IPFS-related parsing helpers. |

## Quick Examples

Make an anonymous generated request:

```dart
import 'package:poptart/poptart.dart';
import 'package:poptart_lex/app/bsky/actor/get_profile.dart'
    as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final response = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(
      actor: 'bsky.app',
    ),
  );

  print(response.data.handle);
}
```

`client.call` accepts both the generated method value shown above and its
underlying descriptor, so `get_profile.methodDescriptor` is also valid when you
prefer the leaf-import descriptor style.

Create an app-password client for scripts or trusted tools:

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

Validate protocol primitives:

```dart
import 'package:poptart_primitives/at_primitives.dart';

void validateTarget(String repo, String collection) {
  if (!isValidHandle(repo) && !isValidDid(repo)) {
    throw ArgumentError.value(repo, 'repo');
  }

  NSID.parse(collection);
}
```

## Docs

The consumer docs live in [`website/content`](website/content):

- [Getting Started](website/content/1.getting-started.md)
- [Packages](website/content/2.packages.md)
- [Lexicons](website/content/3.lexicons.md)
- [Scenarios](website/content/4.scenarios.md)
- [OAuth Sign-In](website/content/5.oauth-sign-in.md)
- [Scripts And App Passwords](website/content/6.scripts-and-app-passwords.md)
- [DID PLC Lookups](website/content/7.did-plc-lookups.md)
- [Primitive Validation](website/content/8.primitive-validation.md)
- [Custom XRPC Calls](website/content/9.custom-xrpc-calls.md)

They cover package choice, generated lexicon usage, authentication flows,
scripts, DID PLC lookups, and primitive validation.

## Repository Notes

This repository is a fork of
[`myConsciousness/atproto.dart`](https://github.com/myConsciousness/atproto.dart).
Upstream license and copyright notices are preserved. New Poptart work lives
under the `poptart_*` package family.

The checked-in lexicons are organized by [`lexicons/manifest.yaml`](lexicons/manifest.yaml).
Generated code should be regenerated from the manifest and lexicon sources
rather than edited by hand.
