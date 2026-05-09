// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './repo.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final repoDescriptor = XRPCObjectDescriptor<Repo>(
  nsid: 'com.atproto.sync.listReposByCollection',
  defName: 'repo',
  fromJson: (json) =>
      const RepoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoConverter().toJson,
  matches: Repo.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      SyncListReposByCollectionInput,
      EmptyData,
      SyncListReposByCollectionOutput
    >(
      nsid: NSID.parse('com.atproto.sync.listReposByCollection'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const SyncListReposByCollectionInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson: const SyncListReposByCollectionInputConverter().toJson,
      outputFromJson: (json) => const SyncListReposByCollectionOutputConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const SyncListReposByCollectionOutputConverter().toJson,
      errors: const [],
    );

final comAtprotoSyncListReposByCollection = methodDescriptor;
