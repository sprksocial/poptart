// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './contact.dart';
import './links.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final linksDescriptor = XRPCObjectDescriptor<Links>(
  nsid: 'com.atproto.server.describeServer',
  defName: 'links',
  fromJson: (json) => const LinksConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LinksConverter().toJson,
  matches: Links.validate,
);

final contactDescriptor = XRPCObjectDescriptor<Contact>(
  nsid: 'com.atproto.server.describeServer',
  defName: 'contact',
  fromJson: (json) => const ContactConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ContactConverter().toJson,
  matches: Contact.validate,
);

final methodDescriptor = XRPCMethodDescriptor<EmptyData, EmptyData, ServerDescribeServerOutput>(
  nsid: NSID.parse('com.atproto.server.describeServer'),
  kind: XRPCMethodKind.query,  outputFromJson: (json) => const ServerDescribeServerOutputConverter().fromJson(json.cast<String, dynamic>()),
  outputToJson: const ServerDescribeServerOutputConverter().toJson,
  errors: const [],
);
