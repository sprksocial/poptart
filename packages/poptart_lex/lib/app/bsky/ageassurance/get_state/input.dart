// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class AgeassuranceGetStateInput with _$AgeassuranceGetStateInput {
  static const knownProps = <String>['countryCode', 'regionCode'];

  @JsonSerializable(includeIfNull: false)
  const factory AgeassuranceGetStateInput({
    required String countryCode,
    String? regionCode,

    Map<String, dynamic>? $unknown,
  }) = _AgeassuranceGetStateInput;

  factory AgeassuranceGetStateInput.fromJson(Map<String, Object?> json) =>
      _$AgeassuranceGetStateInputFromJson(json);
}

extension AgeassuranceGetStateInputExtension on AgeassuranceGetStateInput {
  bool get hasRegionCode => regionCode != null;
  bool get hasNotRegionCode => !hasRegionCode;
}

final class AgeassuranceGetStateInputConverter
    extends JsonConverter<AgeassuranceGetStateInput, Map<String, dynamic>> {
  const AgeassuranceGetStateInputConverter();

  @override
  AgeassuranceGetStateInput fromJson(Map<String, dynamic> json) {
    return AgeassuranceGetStateInput.fromJson(
      translate(json, AgeassuranceGetStateInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(AgeassuranceGetStateInput object) =>
      untranslate(object.toJson());
}
