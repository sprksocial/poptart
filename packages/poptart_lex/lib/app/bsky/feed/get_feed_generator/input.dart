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
abstract class FeedGetFeedGeneratorInput with _$FeedGetFeedGeneratorInput {
  static const knownProps = <String>['feed'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedGetFeedGeneratorInput({
    /// AT-URI of the feed generator record.
    @AtUriConverter() required AtUri feed,

    Map<String, dynamic>? $unknown,
  }) = _FeedGetFeedGeneratorInput;

  factory FeedGetFeedGeneratorInput.fromJson(Map<String, Object?> json) =>
      _$FeedGetFeedGeneratorInputFromJson(json);
}

final class FeedGetFeedGeneratorInputConverter
    extends JsonConverter<FeedGetFeedGeneratorInput, Map<String, dynamic>> {
  const FeedGetFeedGeneratorInputConverter();

  @override
  FeedGetFeedGeneratorInput fromJson(Map<String, dynamic> json) {
    return FeedGetFeedGeneratorInput.fromJson(
      translate(json, FeedGetFeedGeneratorInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedGetFeedGeneratorInput object) =>
      untranslate(object.toJson());
}
