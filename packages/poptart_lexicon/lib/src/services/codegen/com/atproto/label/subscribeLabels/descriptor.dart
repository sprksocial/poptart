// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './info.dart';
import './input.dart';
import './labels.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final labelsDescriptor = XRPCObjectDescriptor<Labels>(
  nsid: 'com.atproto.label.subscribeLabels',
  defName: 'labels',
  fromJson: (json) => const LabelsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelsConverter().toJson,
  matches: Labels.validate,
);

final infoDescriptor = XRPCObjectDescriptor<Info>(
  nsid: 'com.atproto.label.subscribeLabels',
  defName: 'info',
  fromJson: (json) => const InfoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InfoConverter().toJson,
  matches: Info.validate,
);

final methodDescriptor = XRPCMethodDescriptor<LabelSubscribeLabelsInput, EmptyData, Object>(
  nsid: NSID.parse('com.atproto.label.subscribeLabels'),
  kind: XRPCMethodKind.subscription,  parametersFromJson: (json) => const LabelSubscribeLabelsInputConverter().fromJson(json.cast<String, dynamic>()),
  parametersToJson: const LabelSubscribeLabelsInputConverter().toJson,
  errors: const ['FutureCursor'],
);
