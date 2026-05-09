// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/trending_topic.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class UnspeccedGetTrendingTopicsOutput
    with _$UnspeccedGetTrendingTopicsOutput {
  static const knownProps = <String>['topics', 'suggested'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetTrendingTopicsOutput({
    @TrendingTopicConverter() required List<TrendingTopic> topics,
    @TrendingTopicConverter() required List<TrendingTopic> suggested,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetTrendingTopicsOutput;

  factory UnspeccedGetTrendingTopicsOutput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetTrendingTopicsOutputFromJson(json);
}

final class UnspeccedGetTrendingTopicsOutputConverter
    extends
        JsonConverter<UnspeccedGetTrendingTopicsOutput, Map<String, dynamic>> {
  const UnspeccedGetTrendingTopicsOutputConverter();

  @override
  UnspeccedGetTrendingTopicsOutput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetTrendingTopicsOutput.fromJson(
      translate(json, UnspeccedGetTrendingTopicsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetTrendingTopicsOutput object) =>
      untranslate(object.toJson());
}
