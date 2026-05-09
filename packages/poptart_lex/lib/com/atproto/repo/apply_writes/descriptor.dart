// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './create.dart';
import './create_result.dart';
import './delete.dart';
import './delete_result.dart';
import './input.dart';
import './output.dart';
import './update.dart';
import './update_result.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final createDescriptor = XRPCObjectDescriptor<Create>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'create',
  fromJson: (json) =>
      const CreateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const CreateConverter().toJson,
  matches: Create.validate,
);

final updateDescriptor = XRPCObjectDescriptor<Update>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'update',
  fromJson: (json) =>
      const UpdateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const UpdateConverter().toJson,
  matches: Update.validate,
);

final deleteDescriptor = XRPCObjectDescriptor<Delete>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'delete',
  fromJson: (json) =>
      const DeleteConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DeleteConverter().toJson,
  matches: Delete.validate,
);

final createResultDescriptor = XRPCObjectDescriptor<CreateResult>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'createResult',
  fromJson: (json) =>
      const CreateResultConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const CreateResultConverter().toJson,
  matches: CreateResult.validate,
);

final updateResultDescriptor = XRPCObjectDescriptor<UpdateResult>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'updateResult',
  fromJson: (json) =>
      const UpdateResultConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const UpdateResultConverter().toJson,
  matches: UpdateResult.validate,
);

final deleteResultDescriptor = XRPCObjectDescriptor<DeleteResult>(
  nsid: 'com.atproto.repo.applyWrites',
  defName: 'deleteResult',
  fromJson: (json) =>
      const DeleteResultConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DeleteResultConverter().toJson,
  matches: DeleteResult.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      RepoApplyWritesInput,
      RepoApplyWritesOutput
    >(
      nsid: NSID.parse('com.atproto.repo.applyWrites'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) => const RepoApplyWritesInputConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      inputToJson: const RepoApplyWritesInputConverter().toJson,
      outputFromJson: (json) => const RepoApplyWritesOutputConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      outputToJson: const RepoApplyWritesOutputConverter().toJson,
      errors: const ['InvalidSwap'],
    );

final comAtprotoRepoApplyWrites = methodDescriptor;
