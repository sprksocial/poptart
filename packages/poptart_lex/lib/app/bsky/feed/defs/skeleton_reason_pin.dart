// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'skeleton_reason_pin.freezed.dart';
part 'skeleton_reason_pin.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SkeletonReasonPin with _$SkeletonReasonPin {
  static const knownProps = <String>[];

  @JsonSerializable(includeIfNull: false)
  const factory SkeletonReasonPin({
    @Default('app.bsky.feed.defs#skeletonReasonPin') String $type,

    Map<String, dynamic>? $unknown,
  }) = _SkeletonReasonPin;

  factory SkeletonReasonPin.fromJson(Map<String, Object?> json) =>
      _$SkeletonReasonPinFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#skeletonReasonPin';
  }
}

final class SkeletonReasonPinConverter
    extends JsonConverter<SkeletonReasonPin, Map<String, dynamic>> {
  const SkeletonReasonPinConverter();

  @override
  SkeletonReasonPin fromJson(Map<String, dynamic> json) {
    return SkeletonReasonPin.fromJson(
      translate(json, SkeletonReasonPin.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SkeletonReasonPin object) =>
      untranslate(object.toJson());
}
