// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './account.dart';
import './commit.dart';
import './identity.dart';
import './info.dart';
import './input.dart';
import './repo_op.dart';
import './sync.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final commitDescriptor = XRPCObjectDescriptor<Commit>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'commit',
  fromJson: (json) => const CommitConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const CommitConverter().toJson,
  matches: Commit.validate,
);

final syncDescriptor = XRPCObjectDescriptor<Sync>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'sync',
  fromJson: (json) => const SyncConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SyncConverter().toJson,
  matches: Sync.validate,
);

final identityDescriptor = XRPCObjectDescriptor<Identity>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'identity',
  fromJson: (json) => const IdentityConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const IdentityConverter().toJson,
  matches: Identity.validate,
);

final accountDescriptor = XRPCObjectDescriptor<Account>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'account',
  fromJson: (json) => const AccountConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountConverter().toJson,
  matches: Account.validate,
);

final infoDescriptor = XRPCObjectDescriptor<Info>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'info',
  fromJson: (json) => const InfoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InfoConverter().toJson,
  matches: Info.validate,
);

final repoOpDescriptor = XRPCObjectDescriptor<RepoOp>(
  nsid: 'com.atproto.sync.subscribeRepos',
  defName: 'repoOp',
  fromJson: (json) => const RepoOpConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoOpConverter().toJson,
  matches: RepoOp.validate,
);

final methodDescriptor = XRPCMethodDescriptor<SyncSubscribeReposInput, EmptyData, Object>(
  nsid: NSID.parse('com.atproto.sync.subscribeRepos'),
  kind: XRPCMethodKind.subscription,  parametersFromJson: (json) => const SyncSubscribeReposInputConverter().fromJson(json.cast<String, dynamic>()),
  parametersToJson: const SyncSubscribeReposInputConverter().toJson,
  errors: const ['FutureCursor', 'ConsumerTooSlow'],
);
