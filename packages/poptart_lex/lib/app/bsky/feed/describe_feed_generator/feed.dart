// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class Feed with _$Feed {
  static const knownProps = <String>['uri'];

  @JsonSerializable(includeIfNull: false)
  const factory Feed({
    @Default('app.bsky.feed.describeFeedGenerator#feed') String $type,
    @AtUriConverter() required AtUri uri,

    Map<String, dynamic>? $unknown,
  }) = _Feed;

  factory Feed.fromJson(Map<String, Object?> json) => _$FeedFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.describeFeedGenerator#feed';
  }
}

final class FeedConverter extends JsonConverter<Feed, Map<String, dynamic>> {
  const FeedConverter();

  @override
  Feed fromJson(Map<String, dynamic> json) {
    return Feed.fromJson(translate(json, Feed.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Feed object) => untranslate(object.toJson());
}
