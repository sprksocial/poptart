// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'skeleton_search_post.freezed.dart';
part 'skeleton_search_post.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SkeletonSearchPost with _$SkeletonSearchPost {
  static const knownProps = <String>['uri'];

  @JsonSerializable(includeIfNull: false)
  const factory SkeletonSearchPost({
    @Default('app.bsky.unspecced.defs#skeletonSearchPost') String $type,
    @AtUriConverter() required AtUri uri,

    Map<String, dynamic>? $unknown,
  }) = _SkeletonSearchPost;

  factory SkeletonSearchPost.fromJson(Map<String, Object?> json) =>
      _$SkeletonSearchPostFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.unspecced.defs#skeletonSearchPost';
  }
}

final class SkeletonSearchPostConverter
    extends JsonConverter<SkeletonSearchPost, Map<String, dynamic>> {
  const SkeletonSearchPostConverter();

  @override
  SkeletonSearchPost fromJson(Map<String, dynamic> json) {
    return SkeletonSearchPost.fromJson(
      translate(json, SkeletonSearchPost.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SkeletonSearchPost object) =>
      untranslate(object.toJson());
}
