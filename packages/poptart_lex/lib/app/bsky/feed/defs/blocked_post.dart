// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './blocked_author.dart';

part 'blocked_post.freezed.dart';
part 'blocked_post.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class BlockedPost with _$BlockedPost {
  static const knownProps = <String>['uri', 'blocked', 'author'];

  @JsonSerializable(includeIfNull: false)
  const factory BlockedPost({
    @Default('app.bsky.feed.defs#blockedPost') String $type,
    @AtUriConverter() required AtUri uri,
    required bool blocked,
    @BlockedAuthorConverter() required BlockedAuthor author,

    Map<String, dynamic>? $unknown,
  }) = _BlockedPost;

  factory BlockedPost.fromJson(Map<String, Object?> json) =>
      _$BlockedPostFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#blockedPost';
  }
}

extension BlockedPostExtension on BlockedPost {
  bool get isBlocked => blocked;
  bool get isNotBlocked => !isBlocked;
}

final class BlockedPostConverter
    extends JsonConverter<BlockedPost, Map<String, dynamic>> {
  const BlockedPostConverter();

  @override
  BlockedPost fromJson(Map<String, dynamic> json) {
    return BlockedPost.fromJson(translate(json, BlockedPost.knownProps));
  }

  @override
  Map<String, dynamic> toJson(BlockedPost object) =>
      untranslate(object.toJson());
}
