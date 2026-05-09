// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './grant_error.dart';
import './input.dart';
import './output.dart';
import './verification_input.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final verificationInputDescriptor = XRPCObjectDescriptor<VerificationInput>(
  nsid: 'tools.ozone.verification.grantVerifications',
  defName: 'verificationInput',
  fromJson: (json) =>
      const VerificationInputConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const VerificationInputConverter().toJson,
  matches: VerificationInput.validate,
);

final grantErrorDescriptor = XRPCObjectDescriptor<GrantError>(
  nsid: 'tools.ozone.verification.grantVerifications',
  defName: 'grantError',
  fromJson: (json) =>
      const GrantErrorConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const GrantErrorConverter().toJson,
  matches: GrantError.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      VerificationGrantVerificationsInput,
      VerificationGrantVerificationsOutput
    >(
      nsid: NSID.parse('tools.ozone.verification.grantVerifications'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) =>
          const VerificationGrantVerificationsInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      inputToJson: const VerificationGrantVerificationsInputConverter().toJson,
      outputFromJson: (json) =>
          const VerificationGrantVerificationsOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson:
          const VerificationGrantVerificationsOutputConverter().toJson,
      errors: const [],
    );

final toolsOzoneVerificationGrantVerifications = methodDescriptor;
