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

import 'moderation/getActorMetadata/output.dart';
import 'moderation/getMessageContext/output.dart';

import 'dart:typed_data';

import '../../../../ids.g.dart' as ids;
import '../../../../nsids.g.dart' as ns;

// **************************************************************************
// LexGenerator
// **************************************************************************

Future<XRPCResponse<ModerationGetActorMetadataOutput>>
chatBskyModerationGetActorMetadata({
  required String actor,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.chatBskyModerationGetActorMetadata,
  service: $service,
  headers: $headers,
  parameters: {...?$unknown, 'actor': actor},
  to: const ModerationGetActorMetadataOutputConverter().fromJson,
);
Future<XRPCResponse<ModerationGetMessageContextOutput>>
chatBskyModerationGetMessageContext({
  String? convoId,
  required String messageId,
  int? before,
  int? after,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.chatBskyModerationGetMessageContext,
  service: $service,
  headers: $headers,
  parameters: {
    ...?$unknown,
    if (convoId != null) 'convoId': convoId,
    'messageId': messageId,
    if (before != null) 'before': before,
    if (after != null) 'after': after,
  },
  to: const ModerationGetMessageContextOutputConverter().fromJson,
);
Future<XRPCResponse<EmptyData>> chatBskyModerationUpdateActorAccess({
  required String actor,
  required bool allowAccess,
  String? ref,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.post(
  ns.chatBskyModerationUpdateActorAccess,
  service: $service,
  headers: {'Content-type': 'application/json', ...?$headers},
  body: {
    ...?$unknown,
    'actor': actor,
    'allowAccess': allowAccess,
    if (ref != null) 'ref': ref,
  },
);

/// `chat.bsky.moderation.*`
base class ModerationService {
  @protected
  final ServiceContext ctx;

  ModerationService(this.ctx);

  Future<XRPCResponse<ModerationGetActorMetadataOutput>> getActorMetadata({
    required String actor,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await chatBskyModerationGetActorMetadata(
    actor: actor,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
  Future<XRPCResponse<ModerationGetMessageContextOutput>> getMessageContext({
    String? convoId,
    required String messageId,
    int? before,
    int? after,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await chatBskyModerationGetMessageContext(
    convoId: convoId,
    messageId: messageId,
    before: before,
    after: after,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
  Future<XRPCResponse<EmptyData>> updateActorAccess({
    required String actor,
    required bool allowAccess,
    String? ref,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await chatBskyModerationUpdateActorAccess(
    actor: actor,
    allowAccess: allowAccess,
    ref: ref,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
}
