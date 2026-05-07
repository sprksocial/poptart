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

import 'actor/declaration/main_allow_incoming.dart';
import 'package:poptart_lexicon/com_atproto_repo_createrecord.dart';

import 'dart:typed_data';

import '../../../../ids.g.dart' as ids;
import '../../../../nsids.g.dart' as ns;

// **************************************************************************
// LexGenerator
// **************************************************************************

Future<XRPCResponse<EmptyData>> chatBskyActorDeleteAccount({
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
}) async => await $ctx.post(
  ns.chatBskyActorDeleteAccount,
  service: $service,
  headers: {...?$headers},
);
Future<XRPCResponse<Uint8List>> chatBskyActorExportAccountData({
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.chatBskyActorExportAccountData,
  service: $service,
  headers: $headers,
  parameters: {...?$unknown},
);

/// `chat.bsky.actor.*`
base class ActorService {
  @protected
  final ServiceContext ctx;

  final ActorDeclarationRecordAccessor _declaration;

  ActorService(this.ctx) : _declaration = ActorDeclarationRecordAccessor(ctx);

  /// A declaration of a Bluesky chat account.
  ActorDeclarationRecordAccessor get declaration => _declaration;
  Future<XRPCResponse<EmptyData>> deleteAccount({
    String? $service,
    Map<String, String>? $headers,
  }) async => await chatBskyActorDeleteAccount(
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
  );
  Future<XRPCResponse<Uint8List>> exportAccountData({
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await chatBskyActorExportAccountData(
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
}

final class ActorDeclarationRecordAccessor {
  final ServiceContext ctx;

  const ActorDeclarationRecordAccessor(this.ctx);

  Future<XRPCResponse<RepoGetRecordOutput>> get({
    required String repo,
    String rkey = 'self',
    String? cid,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoGetRecord(
    repo: repo,
    collection: ids.chatBskyActorDeclaration,
    rkey: rkey,
    cid: cid,
    $ctx: ctx,
    $headers: $headers,
    $unknown: $unknown,
  );

  Future<XRPCResponse<RepoListRecordsOutput>> list({
    required String repo,
    int? limit,
    String? cursor,
    bool? reverse,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoListRecords(
    repo: repo,
    collection: ids.chatBskyActorDeclaration,
    limit: limit,
    cursor: cursor,
    reverse: reverse,
    $ctx: ctx,
    $headers: $headers,
    $unknown: $unknown,
  );

  Future<XRPCResponse<RepoCreateRecordOutput>> create({
    required ActorDeclarationAllowIncoming allowIncoming,
    String rkey = 'self',
    bool? validate,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoCreateRecord(
    repo: ctx.repo,
    collection: ids.chatBskyActorDeclaration,
    rkey: rkey,
    validate: validate,
    record: {...?$unknown, 'allowIncoming': allowIncoming.toJson()},
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );

  Future<XRPCResponse<RepoPutRecordOutput>> put({
    required ActorDeclarationAllowIncoming allowIncoming,
    String rkey = 'self',
    bool? validate,
    String? swapRecord,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoPutRecord(
    repo: ctx.repo,
    collection: ids.chatBskyActorDeclaration,
    rkey: rkey,
    validate: validate,
    record: {...?$unknown, 'allowIncoming': allowIncoming.toJson()},
    swapRecord: swapRecord,
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );

  Future<XRPCResponse<RepoDeleteRecordOutput>> delete({
    String rkey = 'self',
    String? swapRecord,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoDeleteRecord(
    repo: ctx.repo,
    collection: ids.chatBskyActorDeclaration,
    rkey: rkey,
    swapRecord: swapRecord,
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );
}
