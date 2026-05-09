// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/state.dart';
import '../defs/state_metadata.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class AgeassuranceGetStateOutput with _$AgeassuranceGetStateOutput {
  static const knownProps = <String>['state', 'metadata'];

  @JsonSerializable(includeIfNull: false)
  const factory AgeassuranceGetStateOutput({
    @StateConverter() required State state,
    @StateMetadataConverter() required StateMetadata metadata,

    Map<String, dynamic>? $unknown,
  }) = _AgeassuranceGetStateOutput;

  factory AgeassuranceGetStateOutput.fromJson(Map<String, Object?> json) =>
      _$AgeassuranceGetStateOutputFromJson(json);
}

final class AgeassuranceGetStateOutputConverter
    extends JsonConverter<AgeassuranceGetStateOutput, Map<String, dynamic>> {
  const AgeassuranceGetStateOutputConverter();

  @override
  AgeassuranceGetStateOutput fromJson(Map<String, dynamic> json) {
    return AgeassuranceGetStateOutput.fromJson(
      translate(json, AgeassuranceGetStateOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(AgeassuranceGetStateOutput object) =>
      untranslate(object.toJson());
}
