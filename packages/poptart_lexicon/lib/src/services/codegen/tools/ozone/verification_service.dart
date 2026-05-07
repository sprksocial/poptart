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

import 'verification/grantVerifications/verification_input.dart';
import 'verification/grantVerifications/output.dart';
import 'verification/listVerifications/output.dart';
import 'verification/revokeVerifications/output.dart';

import 'dart:typed_data';

import '../../../../ids.g.dart' as ids;
import '../../../../nsids.g.dart' as ns;

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Grant verifications to multiple subjects. Allows batch processing of up to 100 verifications at once.
Future<XRPCResponse<VerificationGrantVerificationsOutput>>
toolsOzoneVerificationGrantVerifications({
  required List<VerificationInput> verifications,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.post(
  ns.toolsOzoneVerificationGrantVerifications,
  service: $service,
  headers: {'Content-type': 'application/json', ...?$headers},
  body: {
    ...?$unknown,
    'verifications': verifications.map((e) => e.toJson()).toList(),
  },
  to: const VerificationGrantVerificationsOutputConverter().fromJson,
);

/// List verifications
Future<XRPCResponse<VerificationListVerificationsOutput>>
toolsOzoneVerificationListVerifications({
  String? cursor,
  int? limit,
  DateTime? createdAfter,
  DateTime? createdBefore,
  List<String>? issuers,
  List<String>? subjects,
  String? sortDirection,
  bool? isRevoked,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.get(
  ns.toolsOzoneVerificationListVerifications,
  service: $service,
  headers: $headers,
  parameters: {
    ...?$unknown,
    if (cursor != null) 'cursor': cursor,
    if (limit != null) 'limit': limit,
    if (createdAfter != null) 'createdAfter': iso8601(createdAfter),
    if (createdBefore != null) 'createdBefore': iso8601(createdBefore),
    if (issuers != null) 'issuers': issuers,
    if (subjects != null) 'subjects': subjects,
    if (sortDirection != null) 'sortDirection': sortDirection,
    if (isRevoked != null) 'isRevoked': isRevoked,
  },
  to: const VerificationListVerificationsOutputConverter().fromJson,
);

/// Revoke previously granted verifications in batches of up to 100.
Future<XRPCResponse<VerificationRevokeVerificationsOutput>>
toolsOzoneVerificationRevokeVerifications({
  required List<AtUri> uris,
  String? revokeReason,
  required ServiceContext $ctx,
  String? $service,
  Map<String, String>? $headers,
  Map<String, String>? $unknown,
}) async => await $ctx.post(
  ns.toolsOzoneVerificationRevokeVerifications,
  service: $service,
  headers: {'Content-type': 'application/json', ...?$headers},
  body: {
    ...?$unknown,
    'uris': uris.map((e) => e.toString()).toList(),
    if (revokeReason != null) 'revokeReason': revokeReason,
  },
  to: const VerificationRevokeVerificationsOutputConverter().fromJson,
);

/// `tools.ozone.verification.*`
base class VerificationService {
  @protected
  final ServiceContext ctx;

  VerificationService(this.ctx);

  /// Grant verifications to multiple subjects. Allows batch processing of up to 100 verifications at once.
  Future<XRPCResponse<VerificationGrantVerificationsOutput>>
  grantVerifications({
    required List<VerificationInput> verifications,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await toolsOzoneVerificationGrantVerifications(
    verifications: verifications,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );

  /// List verifications
  Future<XRPCResponse<VerificationListVerificationsOutput>> listVerifications({
    String? cursor,
    int? limit,
    DateTime? createdAfter,
    DateTime? createdBefore,
    List<String>? issuers,
    List<String>? subjects,
    String? sortDirection,
    bool? isRevoked,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await toolsOzoneVerificationListVerifications(
    cursor: cursor,
    limit: limit,
    createdAfter: createdAfter,
    createdBefore: createdBefore,
    issuers: issuers,
    subjects: subjects,
    sortDirection: sortDirection,
    isRevoked: isRevoked,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );

  /// Revoke previously granted verifications in batches of up to 100.
  Future<XRPCResponse<VerificationRevokeVerificationsOutput>>
  revokeVerifications({
    required List<AtUri> uris,
    String? revokeReason,
    String? $service,
    Map<String, String>? $headers,
    Map<String, String>? $unknown,
  }) async => await toolsOzoneVerificationRevokeVerifications(
    uris: uris,
    revokeReason: revokeReason,
    $ctx: ctx,
    $service: $service,
    $headers: $headers,
    $unknown: $unknown,
  );
}
