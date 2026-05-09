// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './timeline_item.dart';
import './timeline_item_summary.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final timelineItemDescriptor = XRPCObjectDescriptor<TimelineItem>(
  nsid: 'tools.ozone.moderation.getAccountTimeline',
  defName: 'timelineItem',
  fromJson: (json) =>
      const TimelineItemConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const TimelineItemConverter().toJson,
  matches: TimelineItem.validate,
);

final timelineItemSummaryDescriptor = XRPCObjectDescriptor<TimelineItemSummary>(
  nsid: 'tools.ozone.moderation.getAccountTimeline',
  defName: 'timelineItemSummary',
  fromJson: (json) => const TimelineItemSummaryConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const TimelineItemSummaryConverter().toJson,
  matches: TimelineItemSummary.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      ModerationGetAccountTimelineInput,
      EmptyData,
      ModerationGetAccountTimelineOutput
    >(
      nsid: NSID.parse('tools.ozone.moderation.getAccountTimeline'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const ModerationGetAccountTimelineInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson:
          const ModerationGetAccountTimelineInputConverter().toJson,
      outputFromJson: (json) =>
          const ModerationGetAccountTimelineOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson: const ModerationGetAccountTimelineOutputConverter().toJson,
      errors: const ['RepoNotFound'],
    );

final toolsOzoneModerationGetAccountTimeline = methodDescriptor;
