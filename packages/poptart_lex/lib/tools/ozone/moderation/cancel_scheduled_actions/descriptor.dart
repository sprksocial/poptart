// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './cancellation_results.dart';
import './failed_cancellation.dart';
import './input.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final cancellationResultsDescriptor = XRPCObjectDescriptor<CancellationResults>(
  nsid: 'tools.ozone.moderation.cancelScheduledActions',
  defName: 'cancellationResults',
  fromJson: (json) => const CancellationResultsConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const CancellationResultsConverter().toJson,
  matches: CancellationResults.validate,
);

final failedCancellationDescriptor = XRPCObjectDescriptor<FailedCancellation>(
  nsid: 'tools.ozone.moderation.cancelScheduledActions',
  defName: 'failedCancellation',
  fromJson: (json) => const FailedCancellationConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const FailedCancellationConverter().toJson,
  matches: FailedCancellation.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      ModerationCancelScheduledActionsInput,
      CancellationResults
    >(
      nsid: NSID.parse('tools.ozone.moderation.cancelScheduledActions'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) =>
          const ModerationCancelScheduledActionsInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      inputToJson:
          const ModerationCancelScheduledActionsInputConverter().toJson,
      outputFromJson: (json) => const CancellationResultsConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      outputToJson: const CancellationResultsConverter().toJson,
      errors: const [],
    );

final toolsOzoneModerationCancelScheduledActions = methodDescriptor;
