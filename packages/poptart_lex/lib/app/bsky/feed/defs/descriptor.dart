// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './blocked_author.dart';
import './blocked_post.dart';
import './feed_view_post.dart';
import './generator_view.dart';
import './generator_viewer_state.dart';
import './interaction.dart';
import './not_found_post.dart';
import './post_view.dart';
import './reason_pin.dart';
import './reason_repost.dart';
import './reply_ref.dart';
import './skeleton_feed_post.dart';
import './skeleton_reason_pin.dart';
import './skeleton_reason_repost.dart';
import './thread_context.dart';
import './thread_view_post.dart';
import './threadgate_view.dart';
import './viewer_state.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final postViewDescriptor = XRPCObjectDescriptor<PostView>(
  nsid: 'app.bsky.feed.defs',
  defName: 'postView',
  fromJson: (json) =>
      const PostViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const PostViewConverter().toJson,
  matches: PostView.validate,
);

final viewerStateDescriptor = XRPCObjectDescriptor<ViewerState>(
  nsid: 'app.bsky.feed.defs',
  defName: 'viewerState',
  fromJson: (json) =>
      const ViewerStateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ViewerStateConverter().toJson,
  matches: ViewerState.validate,
);

final threadContextDescriptor = XRPCObjectDescriptor<ThreadContext>(
  nsid: 'app.bsky.feed.defs',
  defName: 'threadContext',
  fromJson: (json) =>
      const ThreadContextConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadContextConverter().toJson,
  matches: ThreadContext.validate,
);

final feedViewPostDescriptor = XRPCObjectDescriptor<FeedViewPost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'feedViewPost',
  fromJson: (json) =>
      const FeedViewPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FeedViewPostConverter().toJson,
  matches: FeedViewPost.validate,
);

final replyRefDescriptor = XRPCObjectDescriptor<ReplyRef>(
  nsid: 'app.bsky.feed.defs',
  defName: 'replyRef',
  fromJson: (json) =>
      const ReplyRefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReplyRefConverter().toJson,
  matches: ReplyRef.validate,
);

final reasonRepostDescriptor = XRPCObjectDescriptor<ReasonRepost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'reasonRepost',
  fromJson: (json) =>
      const ReasonRepostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReasonRepostConverter().toJson,
  matches: ReasonRepost.validate,
);

final reasonPinDescriptor = XRPCObjectDescriptor<ReasonPin>(
  nsid: 'app.bsky.feed.defs',
  defName: 'reasonPin',
  fromJson: (json) =>
      const ReasonPinConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReasonPinConverter().toJson,
  matches: ReasonPin.validate,
);

final threadViewPostDescriptor = XRPCObjectDescriptor<ThreadViewPost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'threadViewPost',
  fromJson: (json) =>
      const ThreadViewPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadViewPostConverter().toJson,
  matches: ThreadViewPost.validate,
);

final notFoundPostDescriptor = XRPCObjectDescriptor<NotFoundPost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'notFoundPost',
  fromJson: (json) =>
      const NotFoundPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const NotFoundPostConverter().toJson,
  matches: NotFoundPost.validate,
);

final blockedPostDescriptor = XRPCObjectDescriptor<BlockedPost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'blockedPost',
  fromJson: (json) =>
      const BlockedPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BlockedPostConverter().toJson,
  matches: BlockedPost.validate,
);

final blockedAuthorDescriptor = XRPCObjectDescriptor<BlockedAuthor>(
  nsid: 'app.bsky.feed.defs',
  defName: 'blockedAuthor',
  fromJson: (json) =>
      const BlockedAuthorConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BlockedAuthorConverter().toJson,
  matches: BlockedAuthor.validate,
);

final generatorViewDescriptor = XRPCObjectDescriptor<GeneratorView>(
  nsid: 'app.bsky.feed.defs',
  defName: 'generatorView',
  fromJson: (json) =>
      const GeneratorViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const GeneratorViewConverter().toJson,
  matches: GeneratorView.validate,
);

final generatorViewerStateDescriptor =
    XRPCObjectDescriptor<GeneratorViewerState>(
      nsid: 'app.bsky.feed.defs',
      defName: 'generatorViewerState',
      fromJson: (json) => const GeneratorViewerStateConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const GeneratorViewerStateConverter().toJson,
      matches: GeneratorViewerState.validate,
    );

final skeletonFeedPostDescriptor = XRPCObjectDescriptor<SkeletonFeedPost>(
  nsid: 'app.bsky.feed.defs',
  defName: 'skeletonFeedPost',
  fromJson: (json) =>
      const SkeletonFeedPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SkeletonFeedPostConverter().toJson,
  matches: SkeletonFeedPost.validate,
);

final skeletonReasonRepostDescriptor =
    XRPCObjectDescriptor<SkeletonReasonRepost>(
      nsid: 'app.bsky.feed.defs',
      defName: 'skeletonReasonRepost',
      fromJson: (json) => const SkeletonReasonRepostConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const SkeletonReasonRepostConverter().toJson,
      matches: SkeletonReasonRepost.validate,
    );

final skeletonReasonPinDescriptor = XRPCObjectDescriptor<SkeletonReasonPin>(
  nsid: 'app.bsky.feed.defs',
  defName: 'skeletonReasonPin',
  fromJson: (json) =>
      const SkeletonReasonPinConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SkeletonReasonPinConverter().toJson,
  matches: SkeletonReasonPin.validate,
);

final threadgateViewDescriptor = XRPCObjectDescriptor<ThreadgateView>(
  nsid: 'app.bsky.feed.defs',
  defName: 'threadgateView',
  fromJson: (json) =>
      const ThreadgateViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadgateViewConverter().toJson,
  matches: ThreadgateView.validate,
);

final interactionDescriptor = XRPCObjectDescriptor<Interaction>(
  nsid: 'app.bsky.feed.defs',
  defName: 'interaction',
  fromJson: (json) =>
      const InteractionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InteractionConverter().toJson,
  matches: Interaction.validate,
);
