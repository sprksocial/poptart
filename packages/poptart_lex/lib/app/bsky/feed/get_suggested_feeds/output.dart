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
abstract class FeedGetSuggestedFeedsOutput with _$FeedGetSuggestedFeedsOutput {
  static const knownProps = <String>['cursor', 'feeds'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedGetSuggestedFeedsOutput({
    String? cursor,
    @GeneratorViewConverter() required List<GeneratorView> feeds,

    Map<String, dynamic>? $unknown,
  }) = _FeedGetSuggestedFeedsOutput;

  factory FeedGetSuggestedFeedsOutput.fromJson(Map<String, Object?> json) =>
      _$FeedGetSuggestedFeedsOutputFromJson(json);
}

extension FeedGetSuggestedFeedsOutputExtension on FeedGetSuggestedFeedsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class FeedGetSuggestedFeedsOutputConverter
    extends JsonConverter<FeedGetSuggestedFeedsOutput, Map<String, dynamic>> {
  const FeedGetSuggestedFeedsOutputConverter();

  @override
  FeedGetSuggestedFeedsOutput fromJson(Map<String, dynamic> json) {
    return FeedGetSuggestedFeedsOutput.fromJson(
      translate(json, FeedGetSuggestedFeedsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedGetSuggestedFeedsOutput object) =>
      untranslate(object.toJson());
}
