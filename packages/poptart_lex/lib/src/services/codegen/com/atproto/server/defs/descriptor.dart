// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './invite_code.dart';
import './invite_code_use.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final inviteCodeDescriptor = XRPCObjectDescriptor<InviteCode>(
  nsid: 'com.atproto.server.defs',
  defName: 'inviteCode',
  fromJson: (json) => const InviteCodeConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InviteCodeConverter().toJson,
  matches: InviteCode.validate,
);

final inviteCodeUseDescriptor = XRPCObjectDescriptor<InviteCodeUse>(
  nsid: 'com.atproto.server.defs',
  defName: 'inviteCodeUse',
  fromJson: (json) => const InviteCodeUseConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InviteCodeUseConverter().toJson,
  matches: InviteCodeUse.validate,
);
