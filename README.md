# Poptart

Poptart is a Dart and Flutter SDK for building AT Protocol applications.
It gives app developers a warm, curated entrypoint while keeping the lower-level
protocol pieces available as focused packages.

Most apps should start here:

```sh
dart pub add poptart
dart pub add poptart_lex
```

```dart
import 'package:poptart/poptart.dart';
```

Think of the repository as a tray of small, well-labeled pieces: the main
`poptart` package is the frosted top, and the specialist packages are there
when you need to reach closer to the protocol.

## Packages

| Package | Use it when... |
| --- | --- |
| `poptart` | You are building a normal Dart or Flutter app and want the app-facing client, sessions, OAuth, raw XRPC access, and common primitives from one dependency. |
| `poptart_lex` | You need generated `com.atproto.*` lexicon models, method values, descriptors, IDs, or bundled lexicon documents. |
| `bluesky_poptart` | You need generated `app.bsky.*` or `chat.bsky.*` lexicon APIs. |
| `ozone_poptart` | You need generated `tools.ozone.*` moderation lexicon APIs. |
| `sprk_poptart` | You need generated `so.sprk.*` lexicon APIs. |
| `margin_poptart` | You need generated `at.margin.*` lexicon APIs. |
| `poptart_core` | You are building package-level integrations and need `PoptartClient`, `ServiceContext`, session helpers, retry configuration, CAR decoding, blobs, or shared client types. |
| `poptart_oauth` | You are adding AT Protocol OAuth sign-in, callback handling, token refresh, or DPoP proof support. |
| `poptart_xrpc` | You are making lower-level XRPC calls without going through the app-facing client. |
| `poptart_primitives` | You only need handles, DIDs, AT URIs, NSIDs, and validation helpers. |
| `poptart_lexicon` | You need to parse raw Lexicon documents and inspect schema model types. |
| `poptart_lex_gen` | You are generating Dart model and descriptor code from lexicon JSON. |
| `poptart_did_plc` | You need DID PLC documents, operation logs, audit logs, health checks, or export streams. |
| `poptart_multiformats` | You need CID parsing and IPFS-related content identifier helpers. |
| `poptart_test` | You are testing Poptart workspace packages with shared XRPC mocks and expectations. |

## Quick Start

Fetch a public Bluesky profile with the app-facing client and a generated
lexicon method:

```dart
import 'package:poptart/poptart.dart';
import 'package:bluesky_poptart/app/bsky/actor/get_profile.dart'
    as get_profile;

Future<void> main() async {
  final client = PoptartClient.anonymous();

  final profile = await client.call(
    get_profile.appBskyActorGetProfile,
    parameters: const get_profile.ActorGetProfileInput(actor: 'bsky.app'),
  );

  print(profile.data.handle);
}
```

Create an app-password session for scripts or trusted tools:

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

Validate protocol identifiers before you put them on the wire:

```dart
import 'package:poptart_primitives/at_primitives.dart';

void validateTarget(String repo, String collection) {
  if (!isValidHandle(repo) && !isValidDid(repo)) {
    throw ArgumentError.value(repo, 'repo');
  }

  NSID.parse(collection);
}
```

## Repository Workflow

This is a Dart pub workspace. Generated lexicon code is checked in, but it
should be regenerated from the lexicon sources and
[`lexicons/manifest.yaml`](lexicons/manifest.yaml) rather than edited by hand.

Useful checks:

```sh
dart analyze .
dart test
dart pub publish --dry-run
```

Run package-specific publish dry-runs from the package directory when preparing
an individual package. It is the final toaster timer for package metadata,
README rendering, and pub.dev shape.

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

## Repository Notes

This repository is a fork of
[`myConsciousness/atproto.dart`](https://github.com/myConsciousness/atproto.dart).
Upstream license and copyright notices are preserved. New work lives under the
`poptart_*` package family.
