// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/generator_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FeedGetFeedGeneratorsOutput with _$FeedGetFeedGeneratorsOutput {
  static const knownProps = <String>['feeds'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedGetFeedGeneratorsOutput({
    @GeneratorViewConverter() required List<GeneratorView> feeds,

    Map<String, dynamic>? $unknown,
  }) = _FeedGetFeedGeneratorsOutput;

  factory FeedGetFeedGeneratorsOutput.fromJson(Map<String, Object?> json) =>
      _$FeedGetFeedGeneratorsOutputFromJson(json);
}

final class FeedGetFeedGeneratorsOutputConverter
    extends JsonConverter<FeedGetFeedGeneratorsOutput, Map<String, dynamic>> {
  const FeedGetFeedGeneratorsOutputConverter();

  @override
  FeedGetFeedGeneratorsOutput fromJson(Map<String, dynamic> json) {
    return FeedGetFeedGeneratorsOutput.fromJson(
      translate(json, FeedGetFeedGeneratorsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedGetFeedGeneratorsOutput object) =>
      untranslate(object.toJson());
}
