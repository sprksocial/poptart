// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './revoke_error.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final revokeErrorDescriptor = XRPCObjectDescriptor<RevokeError>(
  nsid: 'tools.ozone.verification.revokeVerifications',
  defName: 'revokeError',
  fromJson: (json) =>
      const RevokeErrorConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RevokeErrorConverter().toJson,
  matches: RevokeError.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      VerificationRevokeVerificationsInput,
      VerificationRevokeVerificationsOutput
    >(
      nsid: NSID.parse('tools.ozone.verification.revokeVerifications'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) =>
          const VerificationRevokeVerificationsInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      inputToJson: const VerificationRevokeVerificationsInputConverter().toJson,
      outputFromJson: (json) =>
          const VerificationRevokeVerificationsOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson:
          const VerificationRevokeVerificationsOutputConverter().toJson,
      errors: const [],
    );

final toolsOzoneVerificationRevokeVerifications = methodDescriptor;
