// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:poptart_core/poptart_core.dart' show Serializable;
import 'package:poptart_core/internals.dart' show isA;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_parameters_sort.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class AdminGetInviteCodesParametersSort
    with _$AdminGetInviteCodesParametersSort {
  const AdminGetInviteCodesParametersSort._();

  const factory AdminGetInviteCodesParametersSort.knownValue({
    required KnownAdminGetInviteCodesParametersSort data,
  }) = AdminGetInviteCodesParametersSortKnownValue;

  const factory AdminGetInviteCodesParametersSort.unknown({
    required String data,
  }) = AdminGetInviteCodesParametersSortUnknown;

  static AdminGetInviteCodesParametersSort? valueOf(final String? value) {
    if (value == null) return null;
    final knownValue = KnownAdminGetInviteCodesParametersSort.valueOf(value);

    return knownValue != null
        ? AdminGetInviteCodesParametersSort.knownValue(data: knownValue)
        : AdminGetInviteCodesParametersSort.unknown(data: value);
  }

  String toJson() =>
      const AdminGetInviteCodesParametersSortConverter().toJson(this);
}

extension AdminGetInviteCodesParametersSortExtension
    on AdminGetInviteCodesParametersSort {
  bool get isKnownValue =>
      isA<AdminGetInviteCodesParametersSortKnownValue>(this);
  bool get isNotKnownValue => !isKnownValue;
  KnownAdminGetInviteCodesParametersSort? get knownValue =>
      isKnownValue ? data as KnownAdminGetInviteCodesParametersSort : null;
  bool get isUnknown => isA<AdminGetInviteCodesParametersSortUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  String? get unknown => isUnknown ? data as String : null;
}

final class AdminGetInviteCodesParametersSortConverter
    extends JsonConverter<AdminGetInviteCodesParametersSort, String> {
  const AdminGetInviteCodesParametersSortConverter();

  @override
  AdminGetInviteCodesParametersSort fromJson(String json) {
    try {
      final knownValue = KnownAdminGetInviteCodesParametersSort.valueOf(json);
      if (knownValue != null) {
        return AdminGetInviteCodesParametersSort.knownValue(data: knownValue);
      }

      return AdminGetInviteCodesParametersSort.unknown(data: json);
    } catch (_) {
      return AdminGetInviteCodesParametersSort.unknown(data: json);
    }
  }

  @override
  String toJson(AdminGetInviteCodesParametersSort object) =>
      object.when(knownValue: (data) => data.value, unknown: (data) => data);
}

enum KnownAdminGetInviteCodesParametersSort implements Serializable {
  @JsonValue('recent')
  recent('recent'),
  @JsonValue('usage')
  usage('usage');

  @override
  final String value;

  const KnownAdminGetInviteCodesParametersSort(this.value);

  static bool isKnownValue(final String value) {
    return valueOf(value) != null;
  }

  static KnownAdminGetInviteCodesParametersSort? valueOf(final String? value) {
    if (value == null) return null;

    for (final v in values) {
      if (v.value == value) {
        return v;
      }
    }

    return null;
  }
}
