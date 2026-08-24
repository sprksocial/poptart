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
abstract class RepoPutRecordOutputValidationStatus
    with _$RepoPutRecordOutputValidationStatus {
  const RepoPutRecordOutputValidationStatus._();

  const factory RepoPutRecordOutputValidationStatus.knownValue({
    required KnownRepoPutRecordOutputValidationStatus data,
  }) = RepoPutRecordOutputValidationStatusKnownValue;

  const factory RepoPutRecordOutputValidationStatus.unknown({
    required String data,
  }) = RepoPutRecordOutputValidationStatusUnknown;

  static RepoPutRecordOutputValidationStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownRepoPutRecordOutputValidationStatus.valueOf(value);

    return knownValue != null
        ? RepoPutRecordOutputValidationStatus.knownValue(data: knownValue)
        : RepoPutRecordOutputValidationStatus.unknown(data: value);
  }

  String toJson() =>
      const RepoPutRecordOutputValidationStatusConverter().toJson(this);
}

extension RepoPutRecordOutputValidationStatusExtension
    on RepoPutRecordOutputValidationStatus {
  bool get isKnownValue =>
      isA<RepoPutRecordOutputValidationStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownRepoPutRecordOutputValidationStatus? get knownValue =>
      isKnownValue ? data as KnownRepoPutRecordOutputValidationStatus : null;
  bool get isUnknown => isA<RepoPutRecordOutputValidationStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class RepoPutRecordOutputValidationStatusConverter
    extends JsonConverter<RepoPutRecordOutputValidationStatus, String> {
  const RepoPutRecordOutputValidationStatusConverter();

  @override
  RepoPutRecordOutputValidationStatus fromJson(String json) {
    try {
      final knownValue = KnownRepoPutRecordOutputValidationStatus.valueOf(json);
      if (knownValue != null) {
        return RepoPutRecordOutputValidationStatus.knownValue(data: knownValue);
      }

      return RepoPutRecordOutputValidationStatus.unknown(data: json);
    } catch (_) {
      return RepoPutRecordOutputValidationStatus.unknown(data: json);
    }
  }

  @override
  String toJson(RepoPutRecordOutputValidationStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownRepoPutRecordOutputValidationStatus implements Serializable {
  @JsonValue('valid')
  valid('valid'),
  @JsonValue('unknown')
  unknown('unknown');

  @override
  final String value;

  const KnownRepoPutRecordOutputValidationStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownRepoPutRecordOutputValidationStatus? valueOf(
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
