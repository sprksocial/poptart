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

import 'lexicon/resolveLexicon/output.dart';
import 'package:poptart_lexicon/com_atproto_repo_createrecord.dart';

import 'dart:typed_data';

import '../../../../ids.g.dart' as ids;
import '../../../../nsids.g.dart' as ns;

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Resolves an atproto lexicon (NSID) to a schema.
Future<XRPCResponse<LexiconResolveLexiconOutput>>
comAtprotoLexiconResolveLexicon({
  required String nsid,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.comAtprotoLexiconResolveLexicon,
  service: $service,
  headers: $headers,
  parameters: {...?$unknown, 'nsid': nsid},
  to: const LexiconResolveLexiconOutputConverter().fromJson,
);

/// `com.atproto.lexicon.*`
base class LexiconService {
  @protected
  final ServiceContext ctx;

  final LexiconSchemaRecordAccessor _schema;

  LexiconService(this.ctx) : _schema = LexiconSchemaRecordAccessor(ctx);

  /// Resolves an atproto lexicon (NSID) to a schema.
  Future<XRPCResponse<LexiconResolveLexiconOutput>> resolveLexicon({
    required String nsid,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoLexiconResolveLexicon(
    nsid: nsid,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );

  /// Representation of Lexicon schemas themselves, when published as atproto records. Note that the schema language is not defined in Lexicon; this meta schema currently only includes a single version field ('lexicon'). See the atproto specifications for description of the other expected top-level fields ('id', 'defs', etc).
  LexiconSchemaRecordAccessor get schema => _schema;
}

final class LexiconSchemaRecordAccessor {
  final ServiceContext ctx;

  const LexiconSchemaRecordAccessor(this.ctx);

  Future<XRPCResponse<RepoGetRecordOutput>> get({
    required String repo,
    required String rkey,
    String? cid,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoGetRecord(
    repo: repo,
    collection: ids.comAtprotoLexiconSchema,
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
    collection: ids.comAtprotoLexiconSchema,
    limit: limit,
    cursor: cursor,
    reverse: reverse,
    $ctx: ctx,
    $headers: $headers,
    $unknown: $unknown,
  );

  Future<XRPCResponse<RepoCreateRecordOutput>> create({
    required int lexicon,
    String? rkey,
    bool? validate,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoCreateRecord(
    repo: ctx.repo,
    collection: ids.comAtprotoLexiconSchema,
    rkey: rkey,
    validate: validate,
    record: {...?$unknown, 'lexicon': lexicon},
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );

  Future<XRPCResponse<RepoPutRecordOutput>> put({
    required int lexicon,
    required String rkey,
    bool? validate,
    String? swapRecord,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoPutRecord(
    repo: ctx.repo,
    collection: ids.comAtprotoLexiconSchema,
    rkey: rkey,
    validate: validate,
    record: {...?$unknown, 'lexicon': lexicon},
    swapRecord: swapRecord,
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );

  Future<XRPCResponse<RepoDeleteRecordOutput>> delete({
    required String rkey,
    String? swapRecord,
    String? swapCommit,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await comAtprotoRepoDeleteRecord(
    repo: ctx.repo,
    collection: ids.comAtprotoLexiconSchema,
    rkey: rkey,
    swapRecord: swapRecord,
    swapCommit: swapCommit,
    $ctx: ctx,
    $headers: $headers,
  );
}
