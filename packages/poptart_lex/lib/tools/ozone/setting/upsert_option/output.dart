// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/option.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SettingUpsertOptionOutput with _$SettingUpsertOptionOutput {
  static const knownProps = <String>['option'];

  @JsonSerializable(includeIfNull: false)
  const factory SettingUpsertOptionOutput({
    @OptionConverter() required Option option,

    Map<String, dynamic>? $unknown,
  }) = _SettingUpsertOptionOutput;

  factory SettingUpsertOptionOutput.fromJson(Map<String, Object?> json) =>
      _$SettingUpsertOptionOutputFromJson(json);
}

final class SettingUpsertOptionOutputConverter
    extends JsonConverter<SettingUpsertOptionOutput, Map<String, dynamic>> {
  const SettingUpsertOptionOutputConverter();

  @override
  SettingUpsertOptionOutput fromJson(Map<String, dynamic> json) {
    return SettingUpsertOptionOutput.fromJson(
      translate(json, SettingUpsertOptionOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SettingUpsertOptionOutput object) =>
      untranslate(object.toJson());
}
