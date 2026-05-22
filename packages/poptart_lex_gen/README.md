# poptart_lex_gen

Code generator for building Dart models and runtime descriptors from AT Protocol
lexicons.

This package is for maintainers and tooling authors. Most app developers should
depend on the generated lexicon package for the namespaces they call, such as
`poptart_lex` for `com.atproto.*` or `bluesky_poptart` for `app.bsky.*` and
`chat.bsky.*`.

## Install

```sh
dart pub add --dev poptart_lex_gen
```

## Generate From The CLI

Add a manifest that maps lexicon ID prefixes to generated Dart packages:

```yaml
packages:
  - name: poptart_lex
    output: poptart_lex
    roots:
      - com.atproto.
  - name: bluesky_poptart
    output: bluesky_poptart
    roots:
      - app.bsky.
      - chat.bsky.
  - name: ozone_poptart
    output: ozone_poptart
    roots:
      - tools.ozone.
  - name: sprk_poptart
    output: sprk_poptart
    roots:
      - so.sprk.
  - name: margin_poptart
    output: margin_poptart
    roots:
      - at.margin.
```

Then run the generator:

```sh
dart run poptart_lex_gen generate \
  --manifest lexicons/manifest.yaml \
  --lexicons lexicons \
  --packages packages
```

The default paths match that example, so projects with the same layout can use:

```sh
dart run poptart_lex_gen generate
```

Generated packages that use `freezed` or `json_serializable` should run their
normal build step afterward:

```sh
cd packages/bluesky_poptart
dart run build_runner build --delete-conflicting-outputs
```

### Multi-package Lexicons

Each manifest package owns the lexicons whose IDs match one of its `roots`.
When more than one root matches, the generator uses the most specific prefix.
References across package boundaries are emitted as package imports, so a custom
lexicon package can reference shared AT Protocol or Bluesky types without being
generated into the same output package.

`name` is the Dart package name used in generated package imports. `output` is
the directory under `--packages`; when omitted, it defaults to `name`.

For example:

```yaml
packages:
  - name: poptart_lex
    output: lex
    roots:
      - com.atproto.
  - name: bluesky_poptart
    output: bluesky
    roots:
      - app.bsky.
  - name: sprk_poptart
    output: sprk
    roots:
      - so.sprk.
```

With that manifest, `so.sprk.feed.post` is generated into
`packages/sprk/lib`, while references to `app.bsky.richtext.facet` import
from `package:bluesky_poptart/...` and references to `com.atproto.*` import
from `package:poptart_lex/...`.

## Load Lexicons In Dart

```dart
import 'package:poptart_lex_gen/poptart_lex_gen.dart';
```

```dart
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

void main() {
  final docs = loadLexiconDocsFromPaths(['lexicons'], recursive: true);

  for (final doc in docs) {
    print(doc.id);
  }
}
```

## Generate Services

The CLI is the preferred entrypoint, but tooling can also build a config and run
the generator directly:

```dart
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

void main() {
  final config = LexGenConfig(
    services: const ['app', 'com'],
    packages: const ['poptart_lex', 'bluesky_poptart'],
    docsProvider: lexiconDocsProviderFromPaths(['lexicons']),
    serviceRuleConfig: const LexServiceRuleConfig(
      namespaceRules: [
        LexiconNamespaceRule(
          prefixes: ['com.atproto.'],
          homeDir: 'packages/poptart_lex/lib',
          exportCodegenPath: 'package:poptart_lex',
          servicePackagePath: 'package:poptart_lex',
          rootPackageName: 'poptart_lex',
        ),
        LexiconNamespaceRule(
          prefixes: ['app.bsky.', 'chat.bsky.'],
          homeDir: 'packages/bluesky_poptart/lib',
          exportCodegenPath: 'package:bluesky_poptart',
          servicePackagePath: 'package:bluesky_poptart',
          rootPackageName: 'bluesky_poptart',
        ),
      ],
    ),
  );

  ServiceGen(config: config).execute();
}
```

## Notes

The service/model generation path uses an explicit build pipeline: lexicon
documents are loaded into a document index, namespace rules resolve package
ownership, and generated model and descriptor files are emitted after collision
checks.

Command generation under `lib/src/commands/` is intentionally separate and still
uses older assumptions. Treat service generation as the ready tray, and command
generation as a maintenance surface.
