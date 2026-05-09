// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

part 'union_subject_view_profile.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class USubjectViewProfile with _$USubjectViewProfile {
  const USubjectViewProfile._();

  const factory USubjectViewProfile.unknown({
    required Map<String, dynamic> data,
  }) = USubjectViewProfileUnknown;

  Map<String, dynamic> toJson() =>
      const USubjectViewProfileConverter().toJson(this);
}

extension USubjectViewProfileExtension on USubjectViewProfile {
  bool get isUnknown => isA<USubjectViewProfileUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class USubjectViewProfileConverter
    implements JsonConverter<USubjectViewProfile, Map<String, dynamic>> {
  const USubjectViewProfileConverter();

  @override
  USubjectViewProfile fromJson(Map<String, dynamic> json) {
    try {
      return USubjectViewProfile.unknown(data: json);
    } catch (_) {
      return USubjectViewProfile.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(USubjectViewProfile object) =>
      object.when(unknown: (data) => data);
}
