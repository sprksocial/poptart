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
abstract class BookmarkCreateBookmarkInput with _$BookmarkCreateBookmarkInput {
  static const knownProps = <String>['uri', 'cid'];

  @JsonSerializable(includeIfNull: false)
  const factory BookmarkCreateBookmarkInput({
    @AtUriConverter() required AtUri uri,
    required String cid,

    Map<String, dynamic>? $unknown,
  }) = _BookmarkCreateBookmarkInput;

  factory BookmarkCreateBookmarkInput.fromJson(Map<String, Object?> json) =>
      _$BookmarkCreateBookmarkInputFromJson(json);
}

final class BookmarkCreateBookmarkInputConverter
    extends JsonConverter<BookmarkCreateBookmarkInput, Map<String, dynamic>> {
  const BookmarkCreateBookmarkInputConverter();

  @override
  BookmarkCreateBookmarkInput fromJson(Map<String, dynamic> json) {
    return BookmarkCreateBookmarkInput.fromJson(
      translate(json, BookmarkCreateBookmarkInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(BookmarkCreateBookmarkInput object) =>
      untranslate(object.toJson());
}
