// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import '../defs/template_view.dart';
import './input.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      CommunicationUpdateTemplateInput,
      TemplateView
    >(
      nsid: NSID.parse('tools.ozone.communication.updateTemplate'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) => const CommunicationUpdateTemplateInputConverter()
          .fromJson(json.cast<String, dynamic>()),
      inputToJson: const CommunicationUpdateTemplateInputConverter().toJson,
      outputFromJson: (json) =>
          const TemplateViewConverter().fromJson(json.cast<String, dynamic>()),
      outputToJson: const TemplateViewConverter().toJson,
      errors: const ['DuplicateTemplateName'],
    );

final toolsOzoneCommunicationUpdateTemplate = methodDescriptor;
