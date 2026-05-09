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
abstract class UnspeccedGetTrendsInput with _$UnspeccedGetTrendsInput {
  static const knownProps = <String>['limit'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetTrendsInput({
    @Default(10) int limit,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetTrendsInput;

  factory UnspeccedGetTrendsInput.fromJson(Map<String, Object?> json) =>
      _$UnspeccedGetTrendsInputFromJson(json);
}

final class UnspeccedGetTrendsInputConverter
    extends JsonConverter<UnspeccedGetTrendsInput, Map<String, dynamic>> {
  const UnspeccedGetTrendsInputConverter();

  @override
  UnspeccedGetTrendsInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetTrendsInput.fromJson(
      translate(json, UnspeccedGetTrendsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetTrendsInput object) =>
      untranslate(object.toJson());
}
