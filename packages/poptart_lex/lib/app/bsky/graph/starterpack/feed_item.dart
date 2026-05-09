// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'feed_item.freezed.dart';
part 'feed_item.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FeedItem with _$FeedItem {
  static const knownProps = <String>['uri'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedItem({
    @Default('app.bsky.graph.starterpack#feedItem') String $type,
    @AtUriConverter() required AtUri uri,

    Map<String, dynamic>? $unknown,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, Object?> json) =>
      _$FeedItemFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.graph.starterpack#feedItem';
  }
}

final class FeedItemConverter
    extends JsonConverter<FeedItem, Map<String, dynamic>> {
  const FeedItemConverter();

  @override
  FeedItem fromJson(Map<String, dynamic> json) {
    return FeedItem.fromJson(translate(json, FeedItem.knownProps));
  }

  @override
  Map<String, dynamic> toJson(FeedItem object) => untranslate(object.toJson());
}
