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
abstract class UnspeccedGetSuggestedUsersInput
    with _$UnspeccedGetSuggestedUsersInput {
  static const knownProps = <String>['category', 'limit'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetSuggestedUsersInput({
    /// Category of users to get suggestions for.
    String? category,
    @Default(25) int limit,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetSuggestedUsersInput;

  factory UnspeccedGetSuggestedUsersInput.fromJson(Map<String, Object?> json) =>
      _$UnspeccedGetSuggestedUsersInputFromJson(json);
}

extension UnspeccedGetSuggestedUsersInputExtension
    on UnspeccedGetSuggestedUsersInput {
  bool get hasCategory => category != null;
  bool get hasNotCategory => !hasCategory;
}

final class UnspeccedGetSuggestedUsersInputConverter
    extends
        JsonConverter<UnspeccedGetSuggestedUsersInput, Map<String, dynamic>> {
  const UnspeccedGetSuggestedUsersInputConverter();

  @override
  UnspeccedGetSuggestedUsersInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetSuggestedUsersInput.fromJson(
      translate(json, UnspeccedGetSuggestedUsersInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetSuggestedUsersInput object) =>
      untranslate(object.toJson());
}
