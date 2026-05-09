// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './bookmark.dart';
import './bookmark_view.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final bookmarkDescriptor = XRPCObjectDescriptor<Bookmark>(
  nsid: 'app.bsky.bookmark.defs',
  defName: 'bookmark',
  fromJson: (json) =>
      const BookmarkConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BookmarkConverter().toJson,
  matches: Bookmark.validate,
);

final bookmarkViewDescriptor = XRPCObjectDescriptor<BookmarkView>(
  nsid: 'app.bsky.bookmark.defs',
  defName: 'bookmarkView',
  fromJson: (json) =>
      const BookmarkViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BookmarkViewConverter().toJson,
  matches: BookmarkView.validate,
);
