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
abstract class UnspeccedGetSuggestedStarterPacksInput
    with _$UnspeccedGetSuggestedStarterPacksInput {
  static const knownProps = <String>['limit'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetSuggestedStarterPacksInput({
    @Default(10) int limit,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetSuggestedStarterPacksInput;

  factory UnspeccedGetSuggestedStarterPacksInput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetSuggestedStarterPacksInputFromJson(json);
}

final class UnspeccedGetSuggestedStarterPacksInputConverter
    extends
        JsonConverter<
          UnspeccedGetSuggestedStarterPacksInput,
          Map<String, dynamic>
        > {
  const UnspeccedGetSuggestedStarterPacksInputConverter();

  @override
  UnspeccedGetSuggestedStarterPacksInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetSuggestedStarterPacksInput.fromJson(
      translate(json, UnspeccedGetSuggestedStarterPacksInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetSuggestedStarterPacksInput object) =>
      untranslate(object.toJson());
}
