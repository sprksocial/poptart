// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './failed_scheduling.dart';
import './input.dart';
import './scheduled_action_results.dart';
import './scheduling_config.dart';
import './takedown.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final takedownDescriptor = XRPCObjectDescriptor<Takedown>(
  nsid: 'tools.ozone.moderation.scheduleAction',
  defName: 'takedown',
  fromJson: (json) =>
      const TakedownConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const TakedownConverter().toJson,
  matches: Takedown.validate,
);

final schedulingConfigDescriptor = XRPCObjectDescriptor<SchedulingConfig>(
  nsid: 'tools.ozone.moderation.scheduleAction',
  defName: 'schedulingConfig',
  fromJson: (json) =>
      const SchedulingConfigConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SchedulingConfigConverter().toJson,
  matches: SchedulingConfig.validate,
);

final scheduledActionResultsDescriptor =
    XRPCObjectDescriptor<ScheduledActionResults>(
      nsid: 'tools.ozone.moderation.scheduleAction',
      defName: 'scheduledActionResults',
      fromJson: (json) => const ScheduledActionResultsConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ScheduledActionResultsConverter().toJson,
      matches: ScheduledActionResults.validate,
    );

final failedSchedulingDescriptor = XRPCObjectDescriptor<FailedScheduling>(
  nsid: 'tools.ozone.moderation.scheduleAction',
  defName: 'failedScheduling',
  fromJson: (json) =>
      const FailedSchedulingConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FailedSchedulingConverter().toJson,
  matches: FailedScheduling.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      ModerationScheduleActionInput,
      ScheduledActionResults
    >(
      nsid: NSID.parse('tools.ozone.moderation.scheduleAction'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) => const ModerationScheduleActionInputConverter()
          .fromJson(json.cast<String, dynamic>()),
      inputToJson: const ModerationScheduleActionInputConverter().toJson,
      outputFromJson: (json) => const ScheduledActionResultsConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const ScheduledActionResultsConverter().toJson,
      errors: const [],
    );

final toolsOzoneModerationScheduleAction = methodDescriptor;
