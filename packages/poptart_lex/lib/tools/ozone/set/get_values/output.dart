// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/set_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SetGetValuesOutput with _$SetGetValuesOutput {
  static const knownProps = <String>['set', 'values', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory SetGetValuesOutput({
    @SetViewConverter() required SetView set,
    required List<String> values,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _SetGetValuesOutput;

  factory SetGetValuesOutput.fromJson(Map<String, Object?> json) =>
      _$SetGetValuesOutputFromJson(json);
}

extension SetGetValuesOutputExtension on SetGetValuesOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SetGetValuesOutputConverter
    extends JsonConverter<SetGetValuesOutput, Map<String, dynamic>> {
  const SetGetValuesOutputConverter();

  @override
  SetGetValuesOutput fromJson(Map<String, dynamic> json) {
    return SetGetValuesOutput.fromJson(
      translate(json, SetGetValuesOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SetGetValuesOutput object) =>
      untranslate(object.toJson());
}
