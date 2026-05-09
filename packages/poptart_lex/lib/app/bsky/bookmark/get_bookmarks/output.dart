// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/bookmark_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class BookmarkGetBookmarksOutput with _$BookmarkGetBookmarksOutput {
  static const knownProps = <String>['cursor', 'bookmarks'];

  @JsonSerializable(includeIfNull: false)
  const factory BookmarkGetBookmarksOutput({
    String? cursor,
    @BookmarkViewConverter() required List<BookmarkView> bookmarks,

    Map<String, dynamic>? $unknown,
  }) = _BookmarkGetBookmarksOutput;

  factory BookmarkGetBookmarksOutput.fromJson(Map<String, Object?> json) =>
      _$BookmarkGetBookmarksOutputFromJson(json);
}

extension BookmarkGetBookmarksOutputExtension on BookmarkGetBookmarksOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class BookmarkGetBookmarksOutputConverter
    extends JsonConverter<BookmarkGetBookmarksOutput, Map<String, dynamic>> {
  const BookmarkGetBookmarksOutputConverter();

  @override
  BookmarkGetBookmarksOutput fromJson(Map<String, dynamic> json) {
    return BookmarkGetBookmarksOutput.fromJson(
      translate(json, BookmarkGetBookmarksOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(BookmarkGetBookmarksOutput object) =>
      untranslate(object.toJson());
}
