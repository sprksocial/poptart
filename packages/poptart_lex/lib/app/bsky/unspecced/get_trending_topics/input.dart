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
abstract class UnspeccedGetTrendingTopicsInput
    with _$UnspeccedGetTrendingTopicsInput {
  static const knownProps = <String>['viewer', 'limit'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetTrendingTopicsInput({
    /// DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking.
    String? viewer,
    @Default(10) int limit,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetTrendingTopicsInput;

  factory UnspeccedGetTrendingTopicsInput.fromJson(Map<String, Object?> json) =>
      _$UnspeccedGetTrendingTopicsInputFromJson(json);
}

extension UnspeccedGetTrendingTopicsInputExtension
    on UnspeccedGetTrendingTopicsInput {
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
}

final class UnspeccedGetTrendingTopicsInputConverter
    extends
        JsonConverter<UnspeccedGetTrendingTopicsInput, Map<String, dynamic>> {
  const UnspeccedGetTrendingTopicsInputConverter();

  @override
  UnspeccedGetTrendingTopicsInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetTrendingTopicsInput.fromJson(
      translate(json, UnspeccedGetTrendingTopicsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetTrendingTopicsInput object) =>
      untranslate(object.toJson());
}
