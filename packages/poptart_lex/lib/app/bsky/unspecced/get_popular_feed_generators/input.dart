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
abstract class UnspeccedGetPopularFeedGeneratorsInput
    with _$UnspeccedGetPopularFeedGeneratorsInput {
  static const knownProps = <String>['limit', 'cursor', 'query'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetPopularFeedGeneratorsInput({
    @Default(50) int limit,
    String? cursor,
    String? query,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetPopularFeedGeneratorsInput;

  factory UnspeccedGetPopularFeedGeneratorsInput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetPopularFeedGeneratorsInputFromJson(json);
}

extension UnspeccedGetPopularFeedGeneratorsInputExtension
    on UnspeccedGetPopularFeedGeneratorsInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasQuery => query != null;
  bool get hasNotQuery => !hasQuery;
}

final class UnspeccedGetPopularFeedGeneratorsInputConverter
    extends
        JsonConverter<
          UnspeccedGetPopularFeedGeneratorsInput,
          Map<String, dynamic>
        > {
  const UnspeccedGetPopularFeedGeneratorsInputConverter();

  @override
  UnspeccedGetPopularFeedGeneratorsInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetPopularFeedGeneratorsInput.fromJson(
      translate(json, UnspeccedGetPopularFeedGeneratorsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetPopularFeedGeneratorsInput object) =>
      untranslate(object.toJson());
}
