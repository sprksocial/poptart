// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './account_event.dart';
import './account_hosting.dart';
import './account_stats.dart';
import './account_strike.dart';
import './age_assurance_event.dart';
import './age_assurance_override_event.dart';
import './age_assurance_purge_event.dart';
import './blob_view.dart';
import './cancel_scheduled_takedown_event.dart';
import './identity_event.dart';
import './image_details.dart';
import './mod_event_acknowledge.dart';
import './mod_event_comment.dart';
import './mod_event_divert.dart';
import './mod_event_email.dart';
import './mod_event_escalate.dart';
import './mod_event_label.dart';
import './mod_event_mute.dart';
import './mod_event_mute_reporter.dart';
import './mod_event_priority_score.dart';
import './mod_event_report.dart';
import './mod_event_resolve_appeal.dart';
import './mod_event_reverse_takedown.dart';
import './mod_event_tag.dart';
import './mod_event_takedown.dart';
import './mod_event_unmute.dart';
import './mod_event_unmute_reporter.dart';
import './mod_event_view.dart';
import './mod_event_view_detail.dart';
import './mod_tool.dart';
import './moderation.dart';
import './moderation_detail.dart';
import './record_event.dart';
import './record_hosting.dart';
import './record_view.dart';
import './record_view_detail.dart';
import './record_view_not_found.dart';
import './records_stats.dart';
import './repo_view.dart';
import './repo_view_detail.dart';
import './repo_view_not_found.dart';
import './reporter_stats.dart';
import './revoke_account_credentials_event.dart';
import './schedule_takedown_event.dart';
import './scheduled_action_view.dart';
import './subject_status_view.dart';
import './subject_view.dart';
import './video_details.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final modEventViewDescriptor = XRPCObjectDescriptor<ModEventView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventView',
  fromJson: (json) =>
      const ModEventViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventViewConverter().toJson,
  matches: ModEventView.validate,
);

final modEventViewDetailDescriptor = XRPCObjectDescriptor<ModEventViewDetail>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventViewDetail',
  fromJson: (json) => const ModEventViewDetailConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ModEventViewDetailConverter().toJson,
  matches: ModEventViewDetail.validate,
);

final subjectStatusViewDescriptor = XRPCObjectDescriptor<SubjectStatusView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'subjectStatusView',
  fromJson: (json) =>
      const SubjectStatusViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SubjectStatusViewConverter().toJson,
  matches: SubjectStatusView.validate,
);

final subjectViewDescriptor = XRPCObjectDescriptor<SubjectView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'subjectView',
  fromJson: (json) =>
      const SubjectViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SubjectViewConverter().toJson,
  matches: SubjectView.validate,
);

final accountStatsDescriptor = XRPCObjectDescriptor<AccountStats>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'accountStats',
  fromJson: (json) =>
      const AccountStatsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountStatsConverter().toJson,
  matches: AccountStats.validate,
);

final recordsStatsDescriptor = XRPCObjectDescriptor<RecordsStats>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordsStats',
  fromJson: (json) =>
      const RecordsStatsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordsStatsConverter().toJson,
  matches: RecordsStats.validate,
);

final accountStrikeDescriptor = XRPCObjectDescriptor<AccountStrike>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'accountStrike',
  fromJson: (json) =>
      const AccountStrikeConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountStrikeConverter().toJson,
  matches: AccountStrike.validate,
);

final modEventTakedownDescriptor = XRPCObjectDescriptor<ModEventTakedown>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventTakedown',
  fromJson: (json) =>
      const ModEventTakedownConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventTakedownConverter().toJson,
  matches: ModEventTakedown.validate,
);

final modEventReverseTakedownDescriptor =
    XRPCObjectDescriptor<ModEventReverseTakedown>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'modEventReverseTakedown',
      fromJson: (json) => const ModEventReverseTakedownConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ModEventReverseTakedownConverter().toJson,
      matches: ModEventReverseTakedown.validate,
    );

final modEventResolveAppealDescriptor =
    XRPCObjectDescriptor<ModEventResolveAppeal>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'modEventResolveAppeal',
      fromJson: (json) => const ModEventResolveAppealConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ModEventResolveAppealConverter().toJson,
      matches: ModEventResolveAppeal.validate,
    );

final modEventCommentDescriptor = XRPCObjectDescriptor<ModEventComment>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventComment',
  fromJson: (json) =>
      const ModEventCommentConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventCommentConverter().toJson,
  matches: ModEventComment.validate,
);

final modEventReportDescriptor = XRPCObjectDescriptor<ModEventReport>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventReport',
  fromJson: (json) =>
      const ModEventReportConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventReportConverter().toJson,
  matches: ModEventReport.validate,
);

final modEventLabelDescriptor = XRPCObjectDescriptor<ModEventLabel>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventLabel',
  fromJson: (json) =>
      const ModEventLabelConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventLabelConverter().toJson,
  matches: ModEventLabel.validate,
);

final modEventPriorityScoreDescriptor =
    XRPCObjectDescriptor<ModEventPriorityScore>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'modEventPriorityScore',
      fromJson: (json) => const ModEventPriorityScoreConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ModEventPriorityScoreConverter().toJson,
      matches: ModEventPriorityScore.validate,
    );

final ageAssuranceEventDescriptor = XRPCObjectDescriptor<AgeAssuranceEvent>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'ageAssuranceEvent',
  fromJson: (json) =>
      const AgeAssuranceEventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AgeAssuranceEventConverter().toJson,
  matches: AgeAssuranceEvent.validate,
);

final ageAssuranceOverrideEventDescriptor =
    XRPCObjectDescriptor<AgeAssuranceOverrideEvent>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'ageAssuranceOverrideEvent',
      fromJson: (json) => const AgeAssuranceOverrideEventConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const AgeAssuranceOverrideEventConverter().toJson,
      matches: AgeAssuranceOverrideEvent.validate,
    );

final ageAssurancePurgeEventDescriptor =
    XRPCObjectDescriptor<AgeAssurancePurgeEvent>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'ageAssurancePurgeEvent',
      fromJson: (json) => const AgeAssurancePurgeEventConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const AgeAssurancePurgeEventConverter().toJson,
      matches: AgeAssurancePurgeEvent.validate,
    );

final revokeAccountCredentialsEventDescriptor =
    XRPCObjectDescriptor<RevokeAccountCredentialsEvent>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'revokeAccountCredentialsEvent',
      fromJson: (json) => const RevokeAccountCredentialsEventConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const RevokeAccountCredentialsEventConverter().toJson,
      matches: RevokeAccountCredentialsEvent.validate,
    );

final modEventAcknowledgeDescriptor = XRPCObjectDescriptor<ModEventAcknowledge>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventAcknowledge',
  fromJson: (json) => const ModEventAcknowledgeConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ModEventAcknowledgeConverter().toJson,
  matches: ModEventAcknowledge.validate,
);

final modEventEscalateDescriptor = XRPCObjectDescriptor<ModEventEscalate>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventEscalate',
  fromJson: (json) =>
      const ModEventEscalateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventEscalateConverter().toJson,
  matches: ModEventEscalate.validate,
);

final modEventMuteDescriptor = XRPCObjectDescriptor<ModEventMute>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventMute',
  fromJson: (json) =>
      const ModEventMuteConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventMuteConverter().toJson,
  matches: ModEventMute.validate,
);

final modEventUnmuteDescriptor = XRPCObjectDescriptor<ModEventUnmute>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventUnmute',
  fromJson: (json) =>
      const ModEventUnmuteConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventUnmuteConverter().toJson,
  matches: ModEventUnmute.validate,
);

final modEventMuteReporterDescriptor =
    XRPCObjectDescriptor<ModEventMuteReporter>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'modEventMuteReporter',
      fromJson: (json) => const ModEventMuteReporterConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ModEventMuteReporterConverter().toJson,
      matches: ModEventMuteReporter.validate,
    );

final modEventUnmuteReporterDescriptor =
    XRPCObjectDescriptor<ModEventUnmuteReporter>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'modEventUnmuteReporter',
      fromJson: (json) => const ModEventUnmuteReporterConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ModEventUnmuteReporterConverter().toJson,
      matches: ModEventUnmuteReporter.validate,
    );

final modEventEmailDescriptor = XRPCObjectDescriptor<ModEventEmail>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventEmail',
  fromJson: (json) =>
      const ModEventEmailConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventEmailConverter().toJson,
  matches: ModEventEmail.validate,
);

final modEventDivertDescriptor = XRPCObjectDescriptor<ModEventDivert>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventDivert',
  fromJson: (json) =>
      const ModEventDivertConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventDivertConverter().toJson,
  matches: ModEventDivert.validate,
);

final modEventTagDescriptor = XRPCObjectDescriptor<ModEventTag>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modEventTag',
  fromJson: (json) =>
      const ModEventTagConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModEventTagConverter().toJson,
  matches: ModEventTag.validate,
);

final accountEventDescriptor = XRPCObjectDescriptor<AccountEvent>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'accountEvent',
  fromJson: (json) =>
      const AccountEventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountEventConverter().toJson,
  matches: AccountEvent.validate,
);

final identityEventDescriptor = XRPCObjectDescriptor<IdentityEvent>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'identityEvent',
  fromJson: (json) =>
      const IdentityEventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const IdentityEventConverter().toJson,
  matches: IdentityEvent.validate,
);

final recordEventDescriptor = XRPCObjectDescriptor<RecordEvent>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordEvent',
  fromJson: (json) =>
      const RecordEventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordEventConverter().toJson,
  matches: RecordEvent.validate,
);

final scheduleTakedownEventDescriptor =
    XRPCObjectDescriptor<ScheduleTakedownEvent>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'scheduleTakedownEvent',
      fromJson: (json) => const ScheduleTakedownEventConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ScheduleTakedownEventConverter().toJson,
      matches: ScheduleTakedownEvent.validate,
    );

final cancelScheduledTakedownEventDescriptor =
    XRPCObjectDescriptor<CancelScheduledTakedownEvent>(
      nsid: 'tools.ozone.moderation.defs',
      defName: 'cancelScheduledTakedownEvent',
      fromJson: (json) => const CancelScheduledTakedownEventConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const CancelScheduledTakedownEventConverter().toJson,
      matches: CancelScheduledTakedownEvent.validate,
    );

final repoViewDescriptor = XRPCObjectDescriptor<RepoView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'repoView',
  fromJson: (json) =>
      const RepoViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoViewConverter().toJson,
  matches: RepoView.validate,
);

final repoViewDetailDescriptor = XRPCObjectDescriptor<RepoViewDetail>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'repoViewDetail',
  fromJson: (json) =>
      const RepoViewDetailConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoViewDetailConverter().toJson,
  matches: RepoViewDetail.validate,
);

final repoViewNotFoundDescriptor = XRPCObjectDescriptor<RepoViewNotFound>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'repoViewNotFound',
  fromJson: (json) =>
      const RepoViewNotFoundConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RepoViewNotFoundConverter().toJson,
  matches: RepoViewNotFound.validate,
);

final recordViewDescriptor = XRPCObjectDescriptor<RecordView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordView',
  fromJson: (json) =>
      const RecordViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordViewConverter().toJson,
  matches: RecordView.validate,
);

final recordViewDetailDescriptor = XRPCObjectDescriptor<RecordViewDetail>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordViewDetail',
  fromJson: (json) =>
      const RecordViewDetailConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordViewDetailConverter().toJson,
  matches: RecordViewDetail.validate,
);

final recordViewNotFoundDescriptor = XRPCObjectDescriptor<RecordViewNotFound>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordViewNotFound',
  fromJson: (json) => const RecordViewNotFoundConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const RecordViewNotFoundConverter().toJson,
  matches: RecordViewNotFound.validate,
);

final moderationDescriptor = XRPCObjectDescriptor<Moderation>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'moderation',
  fromJson: (json) =>
      const ModerationConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModerationConverter().toJson,
  matches: Moderation.validate,
);

final moderationDetailDescriptor = XRPCObjectDescriptor<ModerationDetail>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'moderationDetail',
  fromJson: (json) =>
      const ModerationDetailConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModerationDetailConverter().toJson,
  matches: ModerationDetail.validate,
);

final blobViewDescriptor = XRPCObjectDescriptor<BlobView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'blobView',
  fromJson: (json) =>
      const BlobViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BlobViewConverter().toJson,
  matches: BlobView.validate,
);

final imageDetailsDescriptor = XRPCObjectDescriptor<ImageDetails>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'imageDetails',
  fromJson: (json) =>
      const ImageDetailsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ImageDetailsConverter().toJson,
  matches: ImageDetails.validate,
);

final videoDetailsDescriptor = XRPCObjectDescriptor<VideoDetails>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'videoDetails',
  fromJson: (json) =>
      const VideoDetailsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const VideoDetailsConverter().toJson,
  matches: VideoDetails.validate,
);

final accountHostingDescriptor = XRPCObjectDescriptor<AccountHosting>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'accountHosting',
  fromJson: (json) =>
      const AccountHostingConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountHostingConverter().toJson,
  matches: AccountHosting.validate,
);

final recordHostingDescriptor = XRPCObjectDescriptor<RecordHosting>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'recordHosting',
  fromJson: (json) =>
      const RecordHostingConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordHostingConverter().toJson,
  matches: RecordHosting.validate,
);

final reporterStatsDescriptor = XRPCObjectDescriptor<ReporterStats>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'reporterStats',
  fromJson: (json) =>
      const ReporterStatsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReporterStatsConverter().toJson,
  matches: ReporterStats.validate,
);

final modToolDescriptor = XRPCObjectDescriptor<ModTool>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'modTool',
  fromJson: (json) =>
      const ModToolConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ModToolConverter().toJson,
  matches: ModTool.validate,
);

final scheduledActionViewDescriptor = XRPCObjectDescriptor<ScheduledActionView>(
  nsid: 'tools.ozone.moderation.defs',
  defName: 'scheduledActionView',
  fromJson: (json) => const ScheduledActionViewConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ScheduledActionViewConverter().toJson,
  matches: ScheduledActionView.validate,
);
