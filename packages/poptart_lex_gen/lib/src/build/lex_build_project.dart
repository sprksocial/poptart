// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import '../config.dart';
import '../services/lex_descriptor_generator.dart';
import '../services/lex_entrypoint_generator.dart';
import '../services/lex_tools_generator.dart';
import '../services/lex_type_generator.dart';
import '../services/rule.dart' as service_rule;
import 'dart_emitter.dart';
import 'generated_file.dart';
import 'lex_doc_index.dart';
import 'lex_ref_resolver.dart';

final class LexBuildProject {
  final LexGenConfig config;
  final List<LexiconDoc> docs;
  final LexDocIndex index;
  final LexRefResolver refResolver;
  final DartEmitter emitter;

  factory LexBuildProject({
    required final LexGenConfig config,
    required List<LexiconDoc> docs,
    final DartEmitter emitter = const DartEmitter(),
  }) {
    final immutableDocs = List<LexiconDoc>.unmodifiable(docs);
    final index = LexDocIndex(immutableDocs);

    return LexBuildProject._(
      config: config,
      docs: immutableDocs,
      index: index,
      refResolver: LexRefResolver(
        index: index,
        config: config.serviceRuleConfig,
      ),
      emitter: emitter,
    );
  }

  const LexBuildProject._({
    required this.config,
    required this.docs,
    required this.index,
    required this.refResolver,
    required this.emitter,
  });

  factory LexBuildProject.load(final LexGenConfig config) {
    final docs = config.docsProvider();
    return LexBuildProject(config: config, docs: docs);
  }

  void buildServices() {
    service_rule.setLexServiceRuleConfig(config.serviceRuleConfig);
    service_rule.setLexiconDocs(docs);

    final types = generateLexTypes(config.services, config.packages, docs);
    emitter.emit(generateLexDescriptors(config.services, types, docs));
    generateLexEntrypoints(config.services, types, docs);

    generateLexTools(config.serviceRuleConfig.namespaceRules, docs);
  }

  List<GeneratedFile> previewDescriptors() {
    service_rule.setLexServiceRuleConfig(config.serviceRuleConfig);
    service_rule.setLexiconDocs(docs);

    final types = generateLexTypes(config.services, config.packages, docs);
    return generateLexDescriptors(config.services, types, docs);
  }
}
