# Poptart

Poptart is Sprk/Spark's Dart SDK suite for the AT Protocol ecosystem. It is a permanent fork of [`myConsciousness/atproto.dart`](https://github.com/myConsciousness/atproto.dart), renamed and reorganized for broader ATProto lexicon coverage beyond the original `com.atproto.*` and `app.bsky.*` split.

The fork keeps upstream license and copyright notices intact. New work in this repository lives under [`sprksocial/poptart`](https://github.com/sprksocial/poptart).

## Packages

User-facing packages:

- `poptart`: umbrella exports for normal application use
- `poptart_lexicon`: parser, generated clients, and generated types for `com.atproto.*`, `app.bsky.*`, `chat.bsky.*`, `tools.ozone.*`, and future manifest roots
- `poptart_oauth`: OAuth helpers
- `poptart_cli`: CLI executable published as `poptart`

Focused packages:

- `poptart_core`
- `poptart_primitives`
- `poptart_xrpc`
- `poptart_multiformats`
- `poptart_did_plc`
- `poptart_bluesky_text`
- `poptart_test` (`publish_to: none`)
- `poptart_lex_gen` (`publish_to: none` initially)

## Lexicons

Lexicon ownership is driven by [`lexicons/manifest.yaml`](lexicons/manifest.yaml):

- `com.atproto.*` -> `poptart_lexicon`
- `app.bsky.*`, `chat.bsky.*` -> `poptart_lexicon`
- `tools.ozone.*` -> `poptart_lexicon`

Add new lexicon groups by extending the manifest and regenerating code rather than hard-coding namespace lists in scripts.

## Development

```sh
dart pub get
dart run ./scripts/gen_codes.dart --sequential
dart run ./scripts/gen_lexicon_ids.dart
dart run melos exec --depends-on="build_runner" -c 1 -- dart run build_runner build --delete-conflicting-outputs
dart run melos exec -c 1 -- dart analyze .
dart run melos exec --ignore="poptart_test,poptart_oauth,poptart_lex_gen" --dir-exists=test -- dart test
```

The first Poptart package release line starts at `0.1.0`.
