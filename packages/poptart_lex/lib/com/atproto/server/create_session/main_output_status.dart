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
abstract class ServerCreateSessionOutputStatus
    with _$ServerCreateSessionOutputStatus {
  const ServerCreateSessionOutputStatus._();

  const factory ServerCreateSessionOutputStatus.knownValue({
    required KnownServerCreateSessionOutputStatus data,
  }) = ServerCreateSessionOutputStatusKnownValue;

  const factory ServerCreateSessionOutputStatus.unknown({
    required String data,
  }) = ServerCreateSessionOutputStatusUnknown;

  static ServerCreateSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownServerCreateSessionOutputStatus.valueOf(value);

    return knownValue != null
        ? ServerCreateSessionOutputStatus.knownValue(data: knownValue)
        : ServerCreateSessionOutputStatus.unknown(data: value);
  }

  String toJson() =>
      const ServerCreateSessionOutputStatusConverter().toJson(this);
}

extension ServerCreateSessionOutputStatusExtension
    on ServerCreateSessionOutputStatus {
  bool get isKnownValue => isA<ServerCreateSessionOutputStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownServerCreateSessionOutputStatus? get knownValue =>
      isKnownValue ? data as KnownServerCreateSessionOutputStatus : null;
  bool get isUnknown => isA<ServerCreateSessionOutputStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class ServerCreateSessionOutputStatusConverter
    extends JsonConverter<ServerCreateSessionOutputStatus, String> {
  const ServerCreateSessionOutputStatusConverter();

  @override
  ServerCreateSessionOutputStatus fromJson(String json) {
    try {
      final knownValue = KnownServerCreateSessionOutputStatus.valueOf(json);
      if (knownValue != null) {
        return ServerCreateSessionOutputStatus.knownValue(data: knownValue);
      }

      return ServerCreateSessionOutputStatus.unknown(data: json);
    } catch (_) {
      return ServerCreateSessionOutputStatus.unknown(data: json);
    }
  }

  @override
  String toJson(ServerCreateSessionOutputStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownServerCreateSessionOutputStatus implements Serializable {
  @JsonValue('takendown')
  takendown('takendown'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('deactivated')
  deactivated('deactivated');

  @override
  final String value;

  const KnownServerCreateSessionOutputStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownServerCreateSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
