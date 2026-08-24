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
abstract class ServerGetSessionOutputStatus
    with _$ServerGetSessionOutputStatus {
  const ServerGetSessionOutputStatus._();

  const factory ServerGetSessionOutputStatus.knownValue({
    required KnownServerGetSessionOutputStatus data,
  }) = ServerGetSessionOutputStatusKnownValue;

  const factory ServerGetSessionOutputStatus.unknown({required String data}) =
      ServerGetSessionOutputStatusUnknown;

  static ServerGetSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownServerGetSessionOutputStatus.valueOf(value);

    return knownValue != null
        ? ServerGetSessionOutputStatus.knownValue(data: knownValue)
        : ServerGetSessionOutputStatus.unknown(data: value);
  }

  String toJson() => const ServerGetSessionOutputStatusConverter().toJson(this);
}

extension ServerGetSessionOutputStatusExtension
    on ServerGetSessionOutputStatus {
  bool get isKnownValue => isA<ServerGetSessionOutputStatusKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownServerGetSessionOutputStatus? get knownValue =>
      isKnownValue ? data as KnownServerGetSessionOutputStatus : null;
  bool get isUnknown => isA<ServerGetSessionOutputStatusUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class ServerGetSessionOutputStatusConverter
    extends JsonConverter<ServerGetSessionOutputStatus, String> {
  const ServerGetSessionOutputStatusConverter();

  @override
  ServerGetSessionOutputStatus fromJson(String json) {
    try {
      final knownValue = KnownServerGetSessionOutputStatus.valueOf(json);
      if (knownValue != null) {
        return ServerGetSessionOutputStatus.knownValue(data: knownValue);
      }

      return ServerGetSessionOutputStatus.unknown(data: json);
    } catch (_) {
      return ServerGetSessionOutputStatus.unknown(data: json);
    }
  }

  @override
  String toJson(ServerGetSessionOutputStatus object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownServerGetSessionOutputStatus implements Serializable {
  @JsonValue('takendown')
  takendown('takendown'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('deactivated')
  deactivated('deactivated');

  @override
  final String value;

  const KnownServerGetSessionOutputStatus(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownServerGetSessionOutputStatus? valueOf(final String? value) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
