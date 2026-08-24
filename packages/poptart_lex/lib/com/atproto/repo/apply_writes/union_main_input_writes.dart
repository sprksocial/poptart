// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import './create.dart';
import './update.dart';
import './delete.dart';

part 'union_main_input_writes.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class URepoApplyWritesInputWrites with _$URepoApplyWritesInputWrites {
  const URepoApplyWritesInputWrites._();

  const factory URepoApplyWritesInputWrites.create({required Create data}) =
      URepoApplyWritesInputWritesCreate;
  const factory URepoApplyWritesInputWrites.update({required Update data}) =
      URepoApplyWritesInputWritesUpdate;
  const factory URepoApplyWritesInputWrites.delete({required Delete data}) =
      URepoApplyWritesInputWritesDelete;

  const factory URepoApplyWritesInputWrites.unknown({
    required Map<String, dynamic> data,
  }) = URepoApplyWritesInputWritesUnknown;

  Map<String, dynamic> toJson() =>
      const URepoApplyWritesInputWritesConverter().toJson(this);
}

extension URepoApplyWritesInputWritesExtension on URepoApplyWritesInputWrites {
  bool get isCreate => isA<URepoApplyWritesInputWritesCreate>(this);
  bool get isNotCreate => !isCreate;
  Create? get create => isCreate ? data as Create : null;
  bool get isUpdate => isA<URepoApplyWritesInputWritesUpdate>(this);
  bool get isNotUpdate => !isUpdate;
  Update? get update => isUpdate ? data as Update : null;
  bool get isDelete => isA<URepoApplyWritesInputWritesDelete>(this);
  bool get isNotDelete => !isDelete;
  Delete? get delete => isDelete ? data as Delete : null;
  bool get isUnknown => isA<URepoApplyWritesInputWritesUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class URepoApplyWritesInputWritesConverter
    implements
        JsonConverter<URepoApplyWritesInputWrites, Map<String, dynamic>> {
  const URepoApplyWritesInputWritesConverter();

  @override
  URepoApplyWritesInputWrites fromJson(Map<String, dynamic> json) {
    try {
      if (Create.validate(json)) {
        return URepoApplyWritesInputWrites.create(
          data: const CreateConverter().fromJson(json),
        );
      }
      if (Update.validate(json)) {
        return URepoApplyWritesInputWrites.update(
          data: const UpdateConverter().fromJson(json),
        );
      }
      if (Delete.validate(json)) {
        return URepoApplyWritesInputWrites.delete(
          data: const DeleteConverter().fromJson(json),
        );
      }

      return URepoApplyWritesInputWrites.unknown(data: json);
    } catch (_) {
      return URepoApplyWritesInputWrites.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(URepoApplyWritesInputWrites object) =>
      object.when(
        create: (data) => const CreateConverter().toJson(data),
        update: (data) => const UpdateConverter().toJson(data),
        delete: (data) => const DeleteConverter().toJson(data),

        unknown: (data) => data,
      );
}
