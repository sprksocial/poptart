// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/sig_detail.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SignatureFindCorrelationOutput
    with _$SignatureFindCorrelationOutput {
  static const knownProps = <String>['details'];

  @JsonSerializable(includeIfNull: false)
  const factory SignatureFindCorrelationOutput({
    @SigDetailConverter() required List<SigDetail> details,

    Map<String, dynamic>? $unknown,
  }) = _SignatureFindCorrelationOutput;

  factory SignatureFindCorrelationOutput.fromJson(Map<String, Object?> json) =>
      _$SignatureFindCorrelationOutputFromJson(json);
}

final class SignatureFindCorrelationOutputConverter
    extends
        JsonConverter<SignatureFindCorrelationOutput, Map<String, dynamic>> {
  const SignatureFindCorrelationOutputConverter();

  @override
  SignatureFindCorrelationOutput fromJson(Map<String, dynamic> json) {
    return SignatureFindCorrelationOutput.fromJson(
      translate(json, SignatureFindCorrelationOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SignatureFindCorrelationOutput object) =>
      untranslate(object.toJson());
}
