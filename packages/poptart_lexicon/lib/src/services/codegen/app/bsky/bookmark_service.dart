// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:poptart_core/internals.dart' show protected;

import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart' show iso8601;

import 'package:poptart_lexicon/com_atproto_services.dart'
    show
        comAtprotoRepoGetRecord,
        comAtprotoRepoListRecords,
        comAtprotoRepoCreateRecord,
        comAtprotoRepoPutRecord,
        comAtprotoRepoDeleteRecord;

import 'package:poptart_lexicon/com_atproto_repo_createrecord.dart';
import 'package:poptart_lexicon/com_atproto_repo_deleterecord.dart';
import 'package:poptart_lexicon/com_atproto_repo_getrecord.dart';
import 'package:poptart_lexicon/com_atproto_repo_listrecords.dart';
import 'package:poptart_lexicon/com_atproto_repo_putrecord.dart';

import 'bookmark/getBookmarks/output.dart';

import 'dart:typed_data';

import '../../../../ids.g.dart' as ids;
import '../../../../nsids.g.dart' as ns;

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Creates a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
Future<XRPCResponse<EmptyData>> appBskyBookmarkCreateBookmark({
  required AtUri uri,
  required String cid,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.post(
  ns.appBskyBookmarkCreateBookmark,
  service: $service,
  headers: {'Content-type': 'application/json', ...?$headers},
  body: {...?$unknown, 'uri': uri.toString(), 'cid': cid},
);

/// Deletes a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
Future<XRPCResponse<EmptyData>> appBskyBookmarkDeleteBookmark({
  required AtUri uri,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.post(
  ns.appBskyBookmarkDeleteBookmark,
  service: $service,
  headers: {'Content-type': 'application/json', ...?$headers},
  body: {...?$unknown, 'uri': uri.toString()},
);

/// Gets views of records bookmarked by the authenticated user. Requires authentication.
Future<XRPCResponse<BookmarkGetBookmarksOutput>> appBskyBookmarkGetBookmarks({
  int? limit,
  String? cursor,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.appBskyBookmarkGetBookmarks,
  service: $service,
  headers: $headers,
  parameters: {
    ...?$unknown,
    if (limit != null) 'limit': limit,
    if (cursor != null) 'cursor': cursor,
  },
  to: const BookmarkGetBookmarksOutputConverter().fromJson,
);

/// `app.bsky.bookmark.*`
base class BookmarkService {
  @protected
  final ServiceContext ctx;

  BookmarkService(this.ctx);

  /// Creates a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
  Future<XRPCResponse<EmptyData>> createBookmark({
    required AtUri uri,
    required String cid,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await appBskyBookmarkCreateBookmark(
    uri: uri,
    cid: cid,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );

  /// Deletes a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.
  Future<XRPCResponse<EmptyData>> deleteBookmark({
    required AtUri uri,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await appBskyBookmarkDeleteBookmark(
    uri: uri,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );

  /// Gets views of records bookmarked by the authenticated user. Requires authentication.
  Future<XRPCResponse<BookmarkGetBookmarksOutput>> getBookmarks({
    int? limit,
    String? cursor,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await appBskyBookmarkGetBookmarks(
    limit: limit,
    cursor: cursor,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
}
