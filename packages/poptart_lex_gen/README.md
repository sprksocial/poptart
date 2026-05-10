# poptart_lex_gen

Code generator for building Dart models and runtime descriptors from AT Protocol
lexicons.

This package is for maintainers and tooling authors. Most app developers should
depend on `poptart_lex`, which contains the generated output ready to use.

## Install

```sh
dart pub add --dev poptart_lex_gen
```

```dart
import 'package:poptart_lex_gen/poptart_lex_gen.dart';
```

## Load Lexicons

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

```dart
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

void main() {
  final config = LexGenConfig(
    services: const ['app', 'com'],
    packages: const ['poptart_lex'],
    docsProvider: lexiconDocsProviderFromPaths(['lexicons']),
    serviceRuleConfig: const LexServiceRuleConfig(
      namespaceRules: [
        LexiconNamespaceRule(
          prefixes: ['app.', 'com.'],
          homeDir: 'packages/poptart_lex',
          exportCodegenPath: 'lib',
          servicePackagePath: 'lib',
          rootPackageName: 'poptart_lex',
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
