// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

// Package imports:
import 'package:poptart_lex_gen/poptart_lex_gen.dart';

// Project imports:
import 'shared/base_script.dart';
import 'shared/config.dart';
import 'shared/config_loader.dart';
import 'shared/error_handler.dart';
import 'shared/logger.dart';
import 'shared/progress_reporter.dart';

const _lexiconManifestPath = 'lexicons/manifest.yaml';

/// Optimized code generation script using BaseScript infrastructure.
class GenCodesScript extends BaseScript {
  final ScriptConfig config;

  GenCodesScript({
    required this.config,
    required super.logger,
    required super.progress,
    required super.errorHandler,
  });

  @override
  String get scriptName => 'gen_codes';

  @override
  String get description => 'Generate Dart code from lexicon definitions';

  @override
  Future<void> execute(List<String> args) async {
    logger.info('Starting code generation with optimizations');

    // Parse command line arguments
    final options = _parseArguments(args);

    // Start progress tracking
    progress.startOperation('Code Generation', 1);

    try {
      // Generate services and types in parallel if possible
      if (options.parallel && config.maxParallelOperations > 1) {
        await _generateInParallel();
      } else {
        await _generateSequentially();
      }

      final stats = {
        'Services Generated': 'Complete',
        'Parallel Processing': options.parallel ? 'Enabled' : 'Disabled',
        'Max Parallel Operations': config.maxParallelOperations,
        'Generation Mode': options.parallel ? 'Parallel' : 'Sequential',
      };

      progress.completeOperation(stats: stats);
    } catch (error, stackTrace) {
      errorHandler.handleScriptError(scriptName, error, stackTrace);
      rethrow;
    }
  }

  /// Generate code sequentially with progress reporting.
  Future<void> _generateSequentially() async {
    logger.info('Generating services and types...');
    progress.updateProgress(0, currentItem: 'Initializing service generation');

    final lexGenConfig = _buildLexGenConfig(
      lexiconsPath: config.lexiconsPath,
      packagesPath: config.packagesPath,
    );

    final serviceStartTime = DateTime.now();
    try {
      ServiceGen(config: lexGenConfig).execute();
      final serviceDuration = DateTime.now().difference(serviceStartTime);
      progress.updateProgress(1, currentItem: 'Service generation complete');
      logger.debug(
        'Service generation completed successfully in ${serviceDuration.inMilliseconds}ms',
      );
    } catch (error) {
      progress.reportError(
        'Service generation failed',
        context: 'ServiceGen.execute()',
      );
      errorHandler.handleValidationError(
        'Service generation failed',
        context: 'ServiceGen.execute()',
      );
      rethrow;
    }
  }

  /// Generate code in parallel using isolates for better performance.
  Future<void> _generateInParallel() async {
    logger.info('Generating services in parallel...');

    final completer = Completer<void>();
    var completedTasks = 0;
    final totalTasks = 1;

    void onTaskComplete() {
      completedTasks++;
      progress.updateProgress(completedTasks);
      if (completedTasks == totalTasks) {
        completer.complete();
      }
    }

    // Start service generation in isolate
    final servicePort = ReceivePort();
    servicePort.listen((message) {
      if (message is String && message == 'complete') {
        logger.debug('Service generation completed in isolate');
        onTaskComplete();
        servicePort.close();
      } else if (message is String && message.startsWith('error:')) {
        final error = message.substring(6);
        errorHandler.handleValidationError(
          'Service generation failed in isolate',
          context: error,
        );
        servicePort.close();
        if (!completer.isCompleted) {
          completer.completeError(
            Exception('Service generation failed: $error'),
          );
        }
      }
    });

    try {
      await Isolate.spawn(_serviceGenerationIsolate, {
        'sendPort': servicePort.sendPort,
        'lexiconsPath': config.lexiconsPath,
        'packagesPath': config.packagesPath,
      });

      // Wait for both tasks to complete
      await completer.future;
    } catch (error) {
      errorHandler.handleScriptError(scriptName, error, StackTrace.current);
      rethrow;
    }
  }

  /// Parse command line arguments.
  _GenerationOptions _parseArguments(List<String> args) {
    var parallel = config.maxParallelOperations > 1;
    var verbose = false;

    for (final arg in args) {
      switch (arg) {
        case '--parallel':
          parallel = true;
          break;
        case '--sequential':
          parallel = false;
          break;
        case '--verbose':
        case '-v':
          verbose = true;
          break;
        case '--help':
        case '-h':
          // Help is handled in main, skip here
          break;
      }
    }

    if (verbose) {
      logger.info('Verbose mode enabled');
      logger.info('Parallel processing: ${parallel ? 'enabled' : 'disabled'}');
      logger.info('Max parallel operations: ${config.maxParallelOperations}');
    }

    return _GenerationOptions(parallel: parallel, verbose: verbose);
  }
}

/// Options for code generation.
class _GenerationOptions {
  final bool parallel;
  final bool verbose;

  const _GenerationOptions({required this.parallel, required this.verbose});
}

/// Isolate entry point for service generation.
void _serviceGenerationIsolate(Map<String, Object> args) {
  final sendPort = args['sendPort']! as SendPort;
  final lexiconsPath = args['lexiconsPath']! as String;
  final packagesPath = args['packagesPath']! as String;

  try {
    final config = _buildLexGenConfig(
      lexiconsPath: lexiconsPath,
      packagesPath: packagesPath,
    );

    ServiceGen(config: config).execute();
    sendPort.send('complete');
  } catch (error) {
    sendPort.send('error:$error');
  }
}

LexGenConfig _buildLexGenConfig({
  required String lexiconsPath,
  required String packagesPath,
}) {
  final manifest = _LexiconManifest.load(_lexiconManifestPath);

  return LexGenConfig(
    services: manifest.services,
    packages: manifest.packages.map((e) => e.name).toList(),
    docsProvider: lexiconDocsProviderFromPaths([lexiconsPath]),
    serviceRuleConfig: LexServiceRuleConfig(
      namespaceRules: manifest.packages
          .map(
            (package) => LexiconNamespaceRule(
              prefixes: package.roots,
              homeDir: '$packagesPath/${package.name}/lib/src/services/codegen',
              exportCodegenPath: 'package:${package.name}/src/services/codegen',
              servicePackagePath: 'package:${package.name}',
              rootPackageName: package.name,
            ),
          )
          .toList(),
    ),
  );
}

final class _LexiconManifest {
  final List<_LexiconPackage> packages;

  const _LexiconManifest({required this.packages});

  List<String> get services =>
      packages.expand((package) => package.roots).toSet().toList();

  static _LexiconManifest load(final String path) {
    final file = File(path);
    if (!file.existsSync()) {
      throw StateError('Lexicon manifest does not exist: $path');
    }

    final packages = <_LexiconPackage>[];
    String? currentName;
    final roots = <String>[];

    void flush() {
      if (currentName == null) return;
      if (roots.isEmpty) {
        throw FormatException('Package $currentName has no roots in $path');
      }
      packages.add(
        _LexiconPackage(name: currentName!, roots: List.unmodifiable(roots)),
      );
      currentName = null;
      roots.clear();
    }

    for (final rawLine in const LineSplitter().convert(
      file.readAsStringSync(),
    )) {
      final line = rawLine.trim();
      if (line.isEmpty || line.startsWith('#') || line == 'packages:') {
        continue;
      }
      if (line.startsWith('- name:')) {
        flush();
        currentName = line.substring('- name:'.length).trim();
        continue;
      }
      if (line == 'roots:') continue;
      if (line.startsWith('- ')) {
        if (currentName == null) {
          throw FormatException('Root declared before package name in $path');
        }
        roots.add(line.substring(2).trim());
      }
    }

    flush();

    if (packages.isEmpty) {
      throw FormatException('No packages found in lexicon manifest: $path');
    }

    return _LexiconManifest(packages: List.unmodifiable(packages));
  }
}

final class _LexiconPackage {
  final String name;
  final List<String> roots;

  const _LexiconPackage({required this.name, required this.roots});
}

/// Main entry point for the script.
Future<void> main(List<String> args) async {
  // Handle help request early
  if (args.contains('--help') || args.contains('-h')) {
    _printUsage();
    return;
  }

  // Load configuration
  final config = await ConfigLoader.load();

  // Create logger with appropriate level
  final logger = Logger(
    level: _parseLogLevel(config.loggingConfig.level),
    useColors: true,
  );

  // Create shared components
  final progress = ProgressReporter();
  final errorHandler = ErrorHandler(logger);

  // Create and run the script
  final script = GenCodesScript(
    config: config,
    logger: logger,
    progress: progress,
    errorHandler: errorHandler,
  );

  try {
    await script.run(args);
  } catch (error) {
    logger.error('Script execution failed: $error');
    exit(1);
  }
}

/// Print usage information.
void _printUsage() {
  print('''
Usage: dart scripts/gen_codes.dart [options]

Options:
  --parallel      Enable parallel code generation (default if supported)
  --sequential    Force sequential code generation
  --verbose, -v   Enable verbose output
  --help, -h      Show this help message

Examples:
  dart scripts/gen_codes.dart
  dart scripts/gen_codes.dart --parallel --verbose
  dart scripts/gen_codes.dart --sequential
''');
}

/// Parse log level string to LogLevel enum.
LogLevel _parseLogLevel(String level) {
  switch (level.toLowerCase()) {
    case 'debug':
      return LogLevel.debug;
    case 'info':
      return LogLevel.info;
    case 'warning':
      return LogLevel.warning;
    case 'error':
      return LogLevel.error;
    default:
      return LogLevel.info;
  }
}
