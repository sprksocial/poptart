// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:args/args.dart';

// Project imports:
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

const _defaultManifestPath = 'lexicons/manifest.yaml';
const _defaultLexiconsPath = 'lexicons';
const _defaultPackagesPath = 'packages';

void main(final List<String> args) {
  if (args.isEmpty || args.first == '--help' || args.first == '-h') {
    _printUsage();
    return;
  }

  final command = args.first;
  final commandArgs = args.sublist(1);

  switch (command) {
    case 'generate':
      _generate(commandArgs);
      return;
    default:
      stderr.writeln('Unknown command: $command');
      _printUsage();
      exitCode = 64;
  }
}

void _generate(final List<String> args) {
  final parser = ArgParser()
    ..addOption(
      'manifest',
      abbr: 'm',
      defaultsTo: _defaultManifestPath,
      help: 'Path to the lexicon package ownership manifest.',
    )
    ..addOption(
      'lexicons',
      abbr: 'l',
      defaultsTo: _defaultLexiconsPath,
      help: 'Path to lexicon JSON files.',
    )
    ..addOption(
      'packages',
      abbr: 'p',
      defaultsTo: _defaultPackagesPath,
      help: 'Path to the Dart packages directory.',
    )
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Show generate command help.',
    );

  late final ArgResults results;
  try {
    results = parser.parse(args);
  } on FormatException catch (error) {
    stderr.writeln(error.message);
    stderr.writeln();
    stderr.writeln(parser.usage);
    exitCode = 64;
    return;
  }

  if (results.flag('help')) {
    stdout.writeln('Usage: dart run poptart_lex_gen generate [options]');
    stdout.writeln();
    stdout.writeln(parser.usage);
    return;
  }

  try {
    final config = lexGenConfigFromManifest(
      manifestPath: results.option('manifest')!,
      lexiconsPath: results.option('lexicons')!,
      packagesPath: results.option('packages')!,
    );

    ServiceGen(config: config).execute();
  } catch (error, stackTrace) {
    stderr.writeln('poptart_lex_gen generate failed: $error');
    stderr.writeln(stackTrace);
    exitCode = 1;
  }
}

void _printUsage() {
  stdout.writeln('Usage: dart run poptart_lex_gen <command> [options]');
  stdout.writeln();
  stdout.writeln('Commands:');
  stdout.writeln('  generate   Generate Dart code from lexicon definitions.');
}
