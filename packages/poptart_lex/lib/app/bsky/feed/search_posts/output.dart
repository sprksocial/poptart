// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/post_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FeedSearchPostsOutput with _$FeedSearchPostsOutput {
  static const knownProps = <String>['cursor', 'hitsTotal', 'posts'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedSearchPostsOutput({
    String? cursor,

    /// Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits.
    int? hitsTotal,
    @PostViewConverter() required List<PostView> posts,

    Map<String, dynamic>? $unknown,
  }) = _FeedSearchPostsOutput;

  factory FeedSearchPostsOutput.fromJson(Map<String, Object?> json) =>
      _$FeedSearchPostsOutputFromJson(json);
}

extension FeedSearchPostsOutputExtension on FeedSearchPostsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasHitsTotal => hitsTotal != null;
  bool get hasNotHitsTotal => !hasHitsTotal;
}

final class FeedSearchPostsOutputConverter
    extends JsonConverter<FeedSearchPostsOutput, Map<String, dynamic>> {
  const FeedSearchPostsOutputConverter();

  @override
  FeedSearchPostsOutput fromJson(Map<String, dynamic> json) {
    return FeedSearchPostsOutput.fromJson(
      translate(json, FeedSearchPostsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedSearchPostsOutput object) =>
      untranslate(object.toJson());
}
