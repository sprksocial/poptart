// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './input.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final methodDescriptor = XRPCMethodDescriptor<EmptyData, ServerCreateSessionInput, ServerCreateSessionOutput>(
  nsid: NSID.parse('com.atproto.server.createSession'),
  kind: XRPCMethodKind.procedure,  inputFromJson: (json) => const ServerCreateSessionInputConverter().fromJson(json.cast<String, dynamic>()),
  inputToJson: const ServerCreateSessionInputConverter().toJson,  outputFromJson: (json) => const ServerCreateSessionOutputConverter().fromJson(json.cast<String, dynamic>()),
  outputToJson: const ServerCreateSessionOutputConverter().toJson,
  errors: const ['AccountTakedown', 'AuthFactorTokenRequired'],
);
