// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/feed_view_post.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FeedGetActorLikesOutput with _$FeedGetActorLikesOutput {
  static const knownProps = <String>['cursor', 'feed'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedGetActorLikesOutput({
    String? cursor,
    @FeedViewPostConverter() required List<FeedViewPost> feed,

    Map<String, dynamic>? $unknown,
  }) = _FeedGetActorLikesOutput;

  factory FeedGetActorLikesOutput.fromJson(Map<String, Object?> json) =>
      _$FeedGetActorLikesOutputFromJson(json);
}

extension FeedGetActorLikesOutputExtension on FeedGetActorLikesOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class FeedGetActorLikesOutputConverter
    extends JsonConverter<FeedGetActorLikesOutput, Map<String, dynamic>> {
  const FeedGetActorLikesOutputConverter();

  @override
  FeedGetActorLikesOutput fromJson(Map<String, dynamic> json) {
    return FeedGetActorLikesOutput.fromJson(
      translate(json, FeedGetActorLikesOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedGetActorLikesOutput object) =>
      untranslate(object.toJson());
}
