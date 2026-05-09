// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './suggestion.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class UnspeccedGetTaggedSuggestionsOutput
    with _$UnspeccedGetTaggedSuggestionsOutput {
  static const knownProps = <String>['suggestions'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetTaggedSuggestionsOutput({
    @SuggestionConverter() required List<Suggestion> suggestions,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetTaggedSuggestionsOutput;

  factory UnspeccedGetTaggedSuggestionsOutput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetTaggedSuggestionsOutputFromJson(json);
}

final class UnspeccedGetTaggedSuggestionsOutputConverter
    extends
        JsonConverter<
          UnspeccedGetTaggedSuggestionsOutput,
          Map<String, dynamic>
        > {
  const UnspeccedGetTaggedSuggestionsOutputConverter();

  @override
  UnspeccedGetTaggedSuggestionsOutput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetTaggedSuggestionsOutput.fromJson(
      translate(json, UnspeccedGetTaggedSuggestionsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetTaggedSuggestionsOutput object) =>
      untranslate(object.toJson());
}
