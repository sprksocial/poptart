// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:poptart_core/poptart_core.dart' show Serializable;
import 'package:poptart_core/internals.dart' show isA;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_output_status.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SyncGetRepoStatusOutputStatus
    with _$SyncGetRepoStatusOutputStatus {
  const SyncGetRepoStatusOutputStatus._();

  const factory SyncGetRepoStatusOutputStatus.knownValue({
    required KnownSyncGetRepoStatusOutputStatus data,
  }) = SyncGetRepoStatusOutputStatusKnownValue;

  const factory SyncGetRepoStatusOutputStatus.unknown({required String data}) =
      SyncGetRepoStatusOutputStatusUnknown;

  static SyncGetRepoStatusOutputStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownSyncGetRepoStatusOutputStatus.valueOf(value);

    return knownValue != null
        ? SyncGetRepoStatusOutputStatus.knownValue(data: knownValue)
        : SyncGetRepoStatusOutputStatus.unknown(data: value);
  }

  String toJson() =>
      const SyncGetRepoStatusOutputStatusConverter().toJson(this);
}

extension SyncGetRepoStatusOutputStatusExtension
    on SyncGetRepoStatusOutputStatus {
  bool get isKnownValue => isA<SyncGetRepoStatusOutputStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownSyncGetRepoStatusOutputStatus? get knownValue =>
      isKnownValue ? data as KnownSyncGetRepoStatusOutputStatus : null;
  bool get isUnknown => isA<SyncGetRepoStatusOutputStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class SyncGetRepoStatusOutputStatusConverter
    extends JsonConverter<SyncGetRepoStatusOutputStatus, String> {
  const SyncGetRepoStatusOutputStatusConverter();

  @override
  SyncGetRepoStatusOutputStatus fromJson(String json) {
    try {
      final knownValue = KnownSyncGetRepoStatusOutputStatus.valueOf(json);
      if (knownValue != null) {
        return SyncGetRepoStatusOutputStatus.knownValue(data: knownValue);
      }

      return SyncGetRepoStatusOutputStatus.unknown(data: json);
    } catch (_) {
      return SyncGetRepoStatusOutputStatus.unknown(data: json);
    }
  }

  @override
  String toJson(SyncGetRepoStatusOutputStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownSyncGetRepoStatusOutputStatus implements Serializable {
  @JsonValue('takendown')
  takendown('takendown'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('deleted')
  deleted('deleted'),
  @JsonValue('deactivated')
  deactivated('deactivated'),
  @JsonValue('desynchronized')
  desynchronized('desynchronized'),
  @JsonValue('throttled')
  throttled('throttled');

  @override
  final String value;

  const KnownSyncGetRepoStatusOutputStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownSyncGetRepoStatusOutputStatus? valueOf(final String? value) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
