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
abstract class SetDeleteValuesInput with _$SetDeleteValuesInput {
  static const knownProps = <String>['name', 'values'];

  @JsonSerializable(includeIfNull: false)
  const factory SetDeleteValuesInput({
    /// Name of the set to delete values from
    required String name,
    required List<String> values,

    Map<String, dynamic>? $unknown,
  }) = _SetDeleteValuesInput;

  factory SetDeleteValuesInput.fromJson(Map<String, Object?> json) =>
      _$SetDeleteValuesInputFromJson(json);
}

final class SetDeleteValuesInputConverter
    extends JsonConverter<SetDeleteValuesInput, Map<String, dynamic>> {
  const SetDeleteValuesInputConverter();

  @override
  SetDeleteValuesInput fromJson(Map<String, dynamic> json) {
    return SetDeleteValuesInput.fromJson(
      translate(json, SetDeleteValuesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SetDeleteValuesInput object) =>
      untranslate(object.toJson());
}
