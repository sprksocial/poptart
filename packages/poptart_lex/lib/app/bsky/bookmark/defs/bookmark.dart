// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../../../com/atproto/repo/strong_ref/main.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Object used to store bookmark data in stash.
@freezed
abstract class Bookmark with _$Bookmark {
  static const knownProps = <String>['subject'];

  @JsonSerializable(includeIfNull: false)
  const factory Bookmark({
    @Default('app.bsky.bookmark.defs#bookmark') String $type,

    /// A strong ref to the record to be bookmarked. Currently, only `app.bsky.feed.post` records are supported.
    @RepoStrongRefConverter() required RepoStrongRef subject,

    Map<String, dynamic>? $unknown,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, Object?> json) =>
      _$BookmarkFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.bookmark.defs#bookmark';
  }
}

final class BookmarkConverter
    extends JsonConverter<Bookmark, Map<String, dynamic>> {
  const BookmarkConverter();

  @override
  Bookmark fromJson(Map<String, dynamic> json) {
    return Bookmark.fromJson(translate(json, Bookmark.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Bookmark object) => untranslate(object.toJson());
}
