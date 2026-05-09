// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './live_now_config.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final liveNowConfigDescriptor = XRPCObjectDescriptor<LiveNowConfig>(
  nsid: 'app.bsky.unspecced.getConfig',
  defName: 'liveNowConfig',
  fromJson: (json) =>
      const LiveNowConfigConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LiveNowConfigConverter().toJson,
  matches: LiveNowConfig.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<EmptyData, EmptyData, UnspeccedGetConfigOutput>(
      nsid: NSID.parse('app.bsky.unspecced.getConfig'),
      kind: XRPCMethodKind.query,
      outputFromJson: (json) => const UnspeccedGetConfigOutputConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const UnspeccedGetConfigOutputConverter().toJson,
      errors: const [],
    );

final appBskyUnspeccedGetConfig = methodDescriptor;
