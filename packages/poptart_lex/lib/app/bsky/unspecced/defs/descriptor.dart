// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './age_assurance_event.dart';
import './age_assurance_state.dart';
import './skeleton_search_actor.dart';
import './skeleton_search_post.dart';
import './skeleton_search_starter_pack.dart';
import './skeleton_trend.dart';
import './thread_item_blocked.dart';
import './thread_item_no_unauthenticated.dart';
import './thread_item_not_found.dart';
import './thread_item_post.dart';
import './trend_view.dart';
import './trending_topic.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final skeletonSearchPostDescriptor = XRPCObjectDescriptor<SkeletonSearchPost>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'skeletonSearchPost',
  fromJson: (json) => const SkeletonSearchPostConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const SkeletonSearchPostConverter().toJson,
  matches: SkeletonSearchPost.validate,
);

final skeletonSearchActorDescriptor = XRPCObjectDescriptor<SkeletonSearchActor>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'skeletonSearchActor',
  fromJson: (json) => const SkeletonSearchActorConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const SkeletonSearchActorConverter().toJson,
  matches: SkeletonSearchActor.validate,
);

final skeletonSearchStarterPackDescriptor =
    XRPCObjectDescriptor<SkeletonSearchStarterPack>(
      nsid: 'app.bsky.unspecced.defs',
      defName: 'skeletonSearchStarterPack',
      fromJson: (json) => const SkeletonSearchStarterPackConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const SkeletonSearchStarterPackConverter().toJson,
      matches: SkeletonSearchStarterPack.validate,
    );

final trendingTopicDescriptor = XRPCObjectDescriptor<TrendingTopic>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'trendingTopic',
  fromJson: (json) =>
      const TrendingTopicConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const TrendingTopicConverter().toJson,
  matches: TrendingTopic.validate,
);

final skeletonTrendDescriptor = XRPCObjectDescriptor<SkeletonTrend>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'skeletonTrend',
  fromJson: (json) =>
      const SkeletonTrendConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SkeletonTrendConverter().toJson,
  matches: SkeletonTrend.validate,
);

final trendViewDescriptor = XRPCObjectDescriptor<TrendView>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'trendView',
  fromJson: (json) =>
      const TrendViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const TrendViewConverter().toJson,
  matches: TrendView.validate,
);

final threadItemPostDescriptor = XRPCObjectDescriptor<ThreadItemPost>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'threadItemPost',
  fromJson: (json) =>
      const ThreadItemPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadItemPostConverter().toJson,
  matches: ThreadItemPost.validate,
);

final threadItemNoUnauthenticatedDescriptor =
    XRPCObjectDescriptor<ThreadItemNoUnauthenticated>(
      nsid: 'app.bsky.unspecced.defs',
      defName: 'threadItemNoUnauthenticated',
      fromJson: (json) => const ThreadItemNoUnauthenticatedConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ThreadItemNoUnauthenticatedConverter().toJson,
      matches: ThreadItemNoUnauthenticated.validate,
    );

final threadItemNotFoundDescriptor = XRPCObjectDescriptor<ThreadItemNotFound>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'threadItemNotFound',
  fromJson: (json) => const ThreadItemNotFoundConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ThreadItemNotFoundConverter().toJson,
  matches: ThreadItemNotFound.validate,
);

final threadItemBlockedDescriptor = XRPCObjectDescriptor<ThreadItemBlocked>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'threadItemBlocked',
  fromJson: (json) =>
      const ThreadItemBlockedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadItemBlockedConverter().toJson,
  matches: ThreadItemBlocked.validate,
);

final ageAssuranceStateDescriptor = XRPCObjectDescriptor<AgeAssuranceState>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'ageAssuranceState',
  fromJson: (json) =>
      const AgeAssuranceStateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AgeAssuranceStateConverter().toJson,
  matches: AgeAssuranceState.validate,
);

final ageAssuranceEventDescriptor = XRPCObjectDescriptor<AgeAssuranceEvent>(
  nsid: 'app.bsky.unspecced.defs',
  defName: 'ageAssuranceEvent',
  fromJson: (json) =>
      const AgeAssuranceEventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AgeAssuranceEventConverter().toJson,
  matches: AgeAssuranceEvent.validate,
);
