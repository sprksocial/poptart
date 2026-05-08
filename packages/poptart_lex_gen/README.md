# poptart_lex_gen

`poptart_lex_gen` builds Dart model and runtime descriptor code from AT Protocol
lexicons.

The service/model generation path now runs through an explicit build pipeline:
lexicon documents are loaded into a document index, references and package
namespace rules are resolved through the build context, and generated model and
descriptor files are emitted after collision checks.

Command generation under `lib/src/commands/` is intentionally not part of that
pipeline yet. It still has older fixed-depth NSID assumptions and needs a later
dedicated refactor before it can support arbitrary-depth command namespaces.
