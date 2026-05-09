// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './account_view.dart';
import './repo_blob_ref.dart';
import './repo_ref.dart';
import './status_attr.dart';
import './threat_signature.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final statusAttrDescriptor = XRPCObjectDescriptor<StatusAttr>(
  nsid: 'com.atproto.admin.defs',
  defName: 'statusAttr',
  fromJson: (json) => const StatusAttrConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const StatusAttrConverter().toJson,
  matches: StatusAttr.validate,
);

final accountViewDescriptor = XRPCObjectDescriptor<AccountView>(
  nsid: 'com.atproto.admin.defs',
  defName: 'accountView',
  fromJson: (json) => const AccountViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountViewConverter().toJson,
  matches: AccountView.validate,
);

final repoRefDescriptor = XRPCObjectDescriptor<RepoRef>(
  nsid: 'com.atproto.admin.defs',
  defName: 'repoRef',
  fromJson: (json) => const RepoRefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoRefConverter().toJson,
  matches: RepoRef.validate,
);

final repoBlobRefDescriptor = XRPCObjectDescriptor<RepoBlobRef>(
  nsid: 'com.atproto.admin.defs',
  defName: 'repoBlobRef',
  fromJson: (json) => const RepoBlobRefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoBlobRefConverter().toJson,
  matches: RepoBlobRef.validate,
);

final threatSignatureDescriptor = XRPCObjectDescriptor<ThreatSignature>(
  nsid: 'com.atproto.admin.defs',
  defName: 'threatSignature',
  fromJson: (json) => const ThreatSignatureConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreatSignatureConverter().toJson,
  matches: ThreatSignature.validate,
);
