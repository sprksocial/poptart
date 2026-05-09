// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../defs/record_view_detail.dart';
import '../defs/record_view_not_found.dart';

part 'union_main_records.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UModerationGetRecordsRecords with _$UModerationGetRecordsRecords {
  const UModerationGetRecordsRecords._();

  const factory UModerationGetRecordsRecords.recordViewDetail({
    required RecordViewDetail data,
  }) = UModerationGetRecordsRecordsRecordViewDetail;
  const factory UModerationGetRecordsRecords.recordViewNotFound({
    required RecordViewNotFound data,
  }) = UModerationGetRecordsRecordsRecordViewNotFound;

  const factory UModerationGetRecordsRecords.unknown({
    required Map<String, dynamic> data,
  }) = UModerationGetRecordsRecordsUnknown;

  Map<String, dynamic> toJson() =>
      const UModerationGetRecordsRecordsConverter().toJson(this);
}

extension UModerationGetRecordsRecordsExtension
    on UModerationGetRecordsRecords {
  bool get isRecordViewDetail =>
      isA<UModerationGetRecordsRecordsRecordViewDetail>(this);
  bool get isNotRecordViewDetail => !isRecordViewDetail;
  RecordViewDetail? get recordViewDetail =>
      isRecordViewDetail ? data as RecordViewDetail : null;
  bool get isRecordViewNotFound =>
      isA<UModerationGetRecordsRecordsRecordViewNotFound>(this);
  bool get isNotRecordViewNotFound => !isRecordViewNotFound;
  RecordViewNotFound? get recordViewNotFound =>
      isRecordViewNotFound ? data as RecordViewNotFound : null;
  bool get isUnknown => isA<UModerationGetRecordsRecordsUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UModerationGetRecordsRecordsConverter
    implements
        JsonConverter<UModerationGetRecordsRecords, Map<String, dynamic>> {
  const UModerationGetRecordsRecordsConverter();

  @override
  UModerationGetRecordsRecords fromJson(Map<String, dynamic> json) {
    try {
      if (RecordViewDetail.validate(json)) {
        return UModerationGetRecordsRecords.recordViewDetail(
          data: const RecordViewDetailConverter().fromJson(json),
        );
      }
      if (RecordViewNotFound.validate(json)) {
        return UModerationGetRecordsRecords.recordViewNotFound(
          data: const RecordViewNotFoundConverter().fromJson(json),
        );
      }

      return UModerationGetRecordsRecords.unknown(data: json);
    } catch (_) {
      return UModerationGetRecordsRecords.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UModerationGetRecordsRecords object) =>
      object.when(
        recordViewDetail: (data) =>
            const RecordViewDetailConverter().toJson(data),
        recordViewNotFound: (data) =>
            const RecordViewNotFoundConverter().toJson(data),

        unknown: (data) => data,
      );
}
