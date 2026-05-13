// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:yaml/yaml.dart';

// Project imports:
import 'config.dart';

final class LexiconManifest {
  final List<LexiconManifestPackage> packages;
  final List<LexiconManifestExternalPackage> externalPackages;

  const LexiconManifest({
    required this.packages,
    this.externalPackages = const [],
  });

  List<String> get services =>
      packages.expand((package) => package.roots).toSet().toList();

  LexGenConfig toConfig({
    required final String lexiconsPath,
    required final String packagesPath,
  }) {
    return LexGenConfig(
      services: services,
      packages: packages
          .map((package) => '$packagesPath/${package.output}')
          .toList(),
      docsProvider: lexiconDocsProviderFromPaths([lexiconsPath]),
      serviceRuleConfig: LexServiceRuleConfig(
        namespaceRules: [
          for (final package in packages)
            LexiconNamespaceRule(
              prefixes: package.roots,
              homeDir: '$packagesPath/${package.output}/lib',
              exportCodegenPath: 'package:${package.name}',
              servicePackagePath: 'package:${package.name}',
              rootPackageName: package.name,
            ),
          for (final package in externalPackages)
            LexiconNamespaceRule(
              prefixes: package.roots,
              homeDir: '',
              exportCodegenPath: 'package:${package.name}',
              servicePackagePath: 'package:${package.name}',
              rootPackageName: package.name,
            ),
        ],
      ),
    );
  }

  static LexiconManifest load(final String path) {
    final file = File(path);
    if (!file.existsSync()) {
      throw StateError('Lexicon manifest does not exist: $path');
    }

    final dynamic yaml = loadYaml(
      file.readAsStringSync(),
      sourceUrl: Uri.file(path),
    );
    if (yaml is! YamlMap) {
      throw FormatException('Lexicon manifest must be a YAML object', path);
    }

    return LexiconManifest.fromYaml(yaml, sourceDescription: path);
  }

  static LexiconManifest fromYaml(
    final YamlMap yaml, {
    final String sourceDescription = 'lexicon manifest',
  }) {
    final packagesYaml = yaml['packages'];
    if (packagesYaml is! YamlList) {
      throw FormatException(
        'Lexicon manifest must contain a packages list',
        sourceDescription,
      );
    }

    final packages = <LexiconManifestPackage>[];
    for (final packageYaml in packagesYaml) {
      if (packageYaml is! YamlMap) {
        throw FormatException(
          'Each package entry must be a YAML object',
          sourceDescription,
        );
      }

      packages.add(
        LexiconManifestPackage.fromYaml(
          packageYaml,
          sourceDescription: sourceDescription,
        ),
      );
    }

    if (packages.isEmpty) {
      throw FormatException(
        'No packages found in lexicon manifest',
        sourceDescription,
      );
    }

    final externalPackages = <LexiconManifestExternalPackage>[];
    final externalPackagesYaml = yaml['externalPackages'];
    if (externalPackagesYaml != null) {
      if (externalPackagesYaml is! YamlList) {
        throw FormatException(
          'Lexicon manifest externalPackages must be a list',
          sourceDescription,
        );
      }

      for (final packageYaml in externalPackagesYaml) {
        if (packageYaml is! YamlMap) {
          throw FormatException(
            'Each external package entry must be a YAML object',
            sourceDescription,
          );
        }

        externalPackages.add(
          LexiconManifestExternalPackage.fromYaml(
            packageYaml,
            sourceDescription: sourceDescription,
          ),
        );
      }
    }

    return LexiconManifest(
      packages: List.unmodifiable(packages),
      externalPackages: List.unmodifiable(externalPackages),
    );
  }
}

final class LexiconManifestPackage {
  final String name;
  final String output;
  final List<String> roots;

  const LexiconManifestPackage({
    required this.name,
    required this.output,
    required this.roots,
  });

  static LexiconManifestPackage fromYaml(
    final YamlMap yaml, {
    required final String sourceDescription,
  }) {
    final name = yaml['name'];
    if (name is! String || name.trim().isEmpty) {
      throw FormatException(
        'Lexicon package entries require a non-empty name',
        sourceDescription,
      );
    }

    final output = yaml['output'];
    if (output != null && (output is! String || output.trim().isEmpty)) {
      throw FormatException(
        'Lexicon package $name contains an invalid output',
        sourceDescription,
      );
    }

    final roots = _readRoots(
      yaml,
      name.trim(),
      sourceDescription: sourceDescription,
    );

    return LexiconManifestPackage(
      name: name.trim(),
      output: output is String ? output.trim() : name.trim(),
      roots: List.unmodifiable(roots),
    );
  }
}

final class LexiconManifestExternalPackage {
  final String name;
  final List<String> roots;

  const LexiconManifestExternalPackage({
    required this.name,
    required this.roots,
  });

  static LexiconManifestExternalPackage fromYaml(
    final YamlMap yaml, {
    required final String sourceDescription,
  }) {
    final name = yaml['name'];
    if (name is! String || name.trim().isEmpty) {
      throw FormatException(
        'External lexicon package entries require a non-empty name',
        sourceDescription,
      );
    }

    final roots = _readRoots(
      yaml,
      name.trim(),
      sourceDescription: sourceDescription,
    );

    return LexiconManifestExternalPackage(
      name: name.trim(),
      roots: List.unmodifiable(roots),
    );
  }
}

List<String> _readRoots(
  final YamlMap yaml,
  final String packageName, {
  required final String sourceDescription,
}) {
  final rootsYaml = yaml['roots'];
  if (rootsYaml is! YamlList) {
    throw FormatException(
      'Lexicon package $packageName must contain a roots list',
      sourceDescription,
    );
  }

  final roots = <String>[];
  for (final root in rootsYaml) {
    if (root is! String || root.trim().isEmpty) {
      throw FormatException(
        'Lexicon package $packageName contains an invalid root',
        sourceDescription,
      );
    }

    roots.add(root.trim());
  }

  if (roots.isEmpty) {
    throw FormatException(
      'Lexicon package $packageName has no roots',
      sourceDescription,
    );
  }

  return roots;
}

LexGenConfig lexGenConfigFromManifest({
  required final String manifestPath,
  required final String lexiconsPath,
  required final String packagesPath,
}) {
  return LexiconManifest.load(
    manifestPath,
  ).toConfig(lexiconsPath: lexiconsPath, packagesPath: packagesPath);
}
