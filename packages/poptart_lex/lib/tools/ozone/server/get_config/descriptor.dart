// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './output.dart';
import './service_config.dart';
import './viewer_config.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final serviceConfigDescriptor = XRPCObjectDescriptor<ServiceConfig>(
  nsid: 'tools.ozone.server.getConfig',
  defName: 'serviceConfig',
  fromJson: (json) =>
      const ServiceConfigConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ServiceConfigConverter().toJson,
  matches: ServiceConfig.validate,
);

final viewerConfigDescriptor = XRPCObjectDescriptor<ViewerConfig>(
  nsid: 'tools.ozone.server.getConfig',
  defName: 'viewerConfig',
  fromJson: (json) =>
      const ViewerConfigConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ViewerConfigConverter().toJson,
  matches: ViewerConfig.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<EmptyData, EmptyData, ServerGetConfigOutput>(
      nsid: NSID.parse('tools.ozone.server.getConfig'),
      kind: XRPCMethodKind.query,
      outputFromJson: (json) => const ServerGetConfigOutputConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      outputToJson: const ServerGetConfigOutputConverter().toJson,
      errors: const [],
    );

final toolsOzoneServerGetConfig = methodDescriptor;
