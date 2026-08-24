// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:poptart_core/poptart_core.dart' show Serializable;
import 'package:poptart_core/internals.dart' show isA;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_output_validation_status.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class RepoCreateRecordOutputValidationStatus
    with _$RepoCreateRecordOutputValidationStatus {
  const RepoCreateRecordOutputValidationStatus._();

  const factory RepoCreateRecordOutputValidationStatus.knownValue({
    required KnownRepoCreateRecordOutputValidationStatus data,
  }) = RepoCreateRecordOutputValidationStatusKnownValue;

  const factory RepoCreateRecordOutputValidationStatus.unknown({
    required String data,
  }) = RepoCreateRecordOutputValidationStatusUnknown;

  static RepoCreateRecordOutputValidationStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownRepoCreateRecordOutputValidationStatus.valueOf(
      value,
    );

    return knownValue != null
        ? RepoCreateRecordOutputValidationStatus.knownValue(data: knownValue)
        : RepoCreateRecordOutputValidationStatus.unknown(data: value);
  }

  String toJson() =>
      const RepoCreateRecordOutputValidationStatusConverter().toJson(this);
}

extension RepoCreateRecordOutputValidationStatusExtension
    on RepoCreateRecordOutputValidationStatus {
  bool get isKnownValue =>
      isA<RepoCreateRecordOutputValidationStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownRepoCreateRecordOutputValidationStatus? get knownValue =>
      isKnownValue ? data as KnownRepoCreateRecordOutputValidationStatus : null;
  bool get isUnknown =>
      isA<RepoCreateRecordOutputValidationStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class RepoCreateRecordOutputValidationStatusConverter
    extends JsonConverter<RepoCreateRecordOutputValidationStatus, String> {
  const RepoCreateRecordOutputValidationStatusConverter();

  @override
  RepoCreateRecordOutputValidationStatus fromJson(String json) {
    try {
      final knownValue = KnownRepoCreateRecordOutputValidationStatus.valueOf(
        json,
      );
      if (knownValue != null) {
        return RepoCreateRecordOutputValidationStatus.knownValue(
          data: knownValue,
        );
      }

      return RepoCreateRecordOutputValidationStatus.unknown(data: json);
    } catch (_) {
      return RepoCreateRecordOutputValidationStatus.unknown(data: json);
    }
  }

  @override
  String toJson(RepoCreateRecordOutputValidationStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownRepoCreateRecordOutputValidationStatus implements Serializable {
  @JsonValue('valid')
  valid('valid'),
  @JsonValue('unknown')
  unknown('unknown');

  @override
  final String value;

  const KnownRepoCreateRecordOutputValidationStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownRepoCreateRecordOutputValidationStatus? valueOf(
    final String? value,
  ) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
