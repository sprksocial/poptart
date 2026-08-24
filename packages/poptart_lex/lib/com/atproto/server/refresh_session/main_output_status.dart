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
abstract class ServerRefreshSessionOutputStatus
    with _$ServerRefreshSessionOutputStatus {
  const ServerRefreshSessionOutputStatus._();

  const factory ServerRefreshSessionOutputStatus.knownValue({
    required KnownServerRefreshSessionOutputStatus data,
  }) = ServerRefreshSessionOutputStatusKnownValue;

  const factory ServerRefreshSessionOutputStatus.unknown({
    required String data,
  }) = ServerRefreshSessionOutputStatusUnknown;

  static ServerRefreshSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownServerRefreshSessionOutputStatus.valueOf(value);

    return knownValue != null
        ? ServerRefreshSessionOutputStatus.knownValue(data: knownValue)
        : ServerRefreshSessionOutputStatus.unknown(data: value);
  }

  String toJson() =>
      const ServerRefreshSessionOutputStatusConverter().toJson(this);
}

extension ServerRefreshSessionOutputStatusExtension
    on ServerRefreshSessionOutputStatus {
  bool get isKnownValue =>
      isA<ServerRefreshSessionOutputStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownServerRefreshSessionOutputStatus? get knownValue =>
      isKnownValue ? data as KnownServerRefreshSessionOutputStatus : null;
  bool get isUnknown => isA<ServerRefreshSessionOutputStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class ServerRefreshSessionOutputStatusConverter
    extends JsonConverter<ServerRefreshSessionOutputStatus, String> {
  const ServerRefreshSessionOutputStatusConverter();

  @override
  ServerRefreshSessionOutputStatus fromJson(String json) {
    try {
      final knownValue = KnownServerRefreshSessionOutputStatus.valueOf(json);
      if (knownValue != null) {
        return ServerRefreshSessionOutputStatus.knownValue(data: knownValue);
      }

      return ServerRefreshSessionOutputStatus.unknown(data: json);
    } catch (_) {
      return ServerRefreshSessionOutputStatus.unknown(data: json);
    }
  }

  @override
  String toJson(ServerRefreshSessionOutputStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownServerRefreshSessionOutputStatus implements Serializable {
  @JsonValue('takendown')
  takendown('takendown'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('deactivated')
  deactivated('deactivated');

  @override
  final String value;

  const KnownServerRefreshSessionOutputStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownServerRefreshSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
