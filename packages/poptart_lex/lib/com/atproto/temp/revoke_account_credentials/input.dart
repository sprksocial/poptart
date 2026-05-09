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
abstract class TempRevokeAccountCredentialsInput
    with _$TempRevokeAccountCredentialsInput {
  static const knownProps = <String>['account'];

  @JsonSerializable(includeIfNull: false)
  const factory TempRevokeAccountCredentialsInput({
    required String account,

    Map<String, dynamic>? $unknown,
  }) = _TempRevokeAccountCredentialsInput;

  factory TempRevokeAccountCredentialsInput.fromJson(
    Map<String, Object?> json,
  ) => _$TempRevokeAccountCredentialsInputFromJson(json);
}

final class TempRevokeAccountCredentialsInputConverter
    extends
        JsonConverter<TempRevokeAccountCredentialsInput, Map<String, dynamic>> {
  const TempRevokeAccountCredentialsInputConverter();

  @override
  TempRevokeAccountCredentialsInput fromJson(Map<String, dynamic> json) {
    return TempRevokeAccountCredentialsInput.fromJson(
      translate(json, TempRevokeAccountCredentialsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(TempRevokeAccountCredentialsInput object) =>
      untranslate(object.toJson());
}
