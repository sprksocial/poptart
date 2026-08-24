// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import './create_result.dart';
import './update_result.dart';
import './delete_result.dart';

part 'union_main_output_results.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class URepoApplyWritesOutputResults
    with _$URepoApplyWritesOutputResults {
  const URepoApplyWritesOutputResults._();

  const factory URepoApplyWritesOutputResults.createResult({
    required CreateResult data,
  }) = URepoApplyWritesOutputResultsCreateResult;
  const factory URepoApplyWritesOutputResults.updateResult({
    required UpdateResult data,
  }) = URepoApplyWritesOutputResultsUpdateResult;
  const factory URepoApplyWritesOutputResults.deleteResult({
    required DeleteResult data,
  }) = URepoApplyWritesOutputResultsDeleteResult;

  const factory URepoApplyWritesOutputResults.unknown({
    required Map<String, dynamic> data,
  }) = URepoApplyWritesOutputResultsUnknown;

  Map<String, dynamic> toJson() =>
      const URepoApplyWritesOutputResultsConverter().toJson(this);
}

extension URepoApplyWritesOutputResultsExtension
    on URepoApplyWritesOutputResults {
  bool get isCreateResult =>
      isA<URepoApplyWritesOutputResultsCreateResult>(this);
  bool get isNotCreateResult => !isCreateResult;
  CreateResult? get createResult =>
      isCreateResult ? data as CreateResult : null;
  bool get isUpdateResult =>
      isA<URepoApplyWritesOutputResultsUpdateResult>(this);
  bool get isNotUpdateResult => !isUpdateResult;
  UpdateResult? get updateResult =>
      isUpdateResult ? data as UpdateResult : null;
  bool get isDeleteResult =>
      isA<URepoApplyWritesOutputResultsDeleteResult>(this);
  bool get isNotDeleteResult => !isDeleteResult;
  DeleteResult? get deleteResult =>
      isDeleteResult ? data as DeleteResult : null;
  bool get isUnknown => isA<URepoApplyWritesOutputResultsUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class URepoApplyWritesOutputResultsConverter
    implements
        JsonConverter<URepoApplyWritesOutputResults, Map<String, dynamic>> {
  const URepoApplyWritesOutputResultsConverter();

  @override
  URepoApplyWritesOutputResults fromJson(Map<String, dynamic> json) {
    try {
      if (CreateResult.validate(json)) {
        return URepoApplyWritesOutputResults.createResult(
          data: const CreateResultConverter().fromJson(json),
        );
      }
      if (UpdateResult.validate(json)) {
        return URepoApplyWritesOutputResults.updateResult(
          data: const UpdateResultConverter().fromJson(json),
        );
      }
      if (DeleteResult.validate(json)) {
        return URepoApplyWritesOutputResults.deleteResult(
          data: const DeleteResultConverter().fromJson(json),
        );
      }

      return URepoApplyWritesOutputResults.unknown(data: json);
    } catch (_) {
      return URepoApplyWritesOutputResults.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(URepoApplyWritesOutputResults object) =>
      object.when(
        createResult: (data) => const CreateResultConverter().toJson(data),
        updateResult: (data) => const UpdateResultConverter().toJson(data),
        deleteResult: (data) => const DeleteResultConverter().toJson(data),

        unknown: (data) => data,
      );
}
