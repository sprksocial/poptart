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
abstract class SettingListOptionsOutput with _$SettingListOptionsOutput {
  static const knownProps = <String>['cursor', 'options'];

  @JsonSerializable(includeIfNull: false)
  const factory SettingListOptionsOutput({
    String? cursor,
    @OptionConverter() required List<Option> options,

    Map<String, dynamic>? $unknown,
  }) = _SettingListOptionsOutput;

  factory SettingListOptionsOutput.fromJson(Map<String, Object?> json) =>
      _$SettingListOptionsOutputFromJson(json);
}

extension SettingListOptionsOutputExtension on SettingListOptionsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SettingListOptionsOutputConverter
    extends JsonConverter<SettingListOptionsOutput, Map<String, dynamic>> {
  const SettingListOptionsOutputConverter();

  @override
  SettingListOptionsOutput fromJson(Map<String, dynamic> json) {
    return SettingListOptionsOutput.fromJson(
      translate(json, SettingListOptionsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SettingListOptionsOutput object) =>
      untranslate(object.toJson());
}
