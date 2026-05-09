// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './related_account.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final relatedAccountDescriptor = XRPCObjectDescriptor<RelatedAccount>(
  nsid: 'tools.ozone.signature.findRelatedAccounts',
  defName: 'relatedAccount',
  fromJson: (json) =>
      const RelatedAccountConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RelatedAccountConverter().toJson,
  matches: RelatedAccount.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      SignatureFindRelatedAccountsInput,
      EmptyData,
      SignatureFindRelatedAccountsOutput
    >(
      nsid: NSID.parse('tools.ozone.signature.findRelatedAccounts'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const SignatureFindRelatedAccountsInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson:
          const SignatureFindRelatedAccountsInputConverter().toJson,
      outputFromJson: (json) =>
          const SignatureFindRelatedAccountsOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson: const SignatureFindRelatedAccountsOutputConverter().toJson,
      errors: const [],
    );

final toolsOzoneSignatureFindRelatedAccounts = methodDescriptor;
