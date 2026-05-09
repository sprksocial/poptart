// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './like.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final likeDescriptor = XRPCObjectDescriptor<Like>(
  nsid: 'app.bsky.feed.getLikes',
  defName: 'like',
  fromJson: (json) =>
      const LikeConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LikeConverter().toJson,
  matches: Like.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<FeedGetLikesInput, EmptyData, FeedGetLikesOutput>(
      nsid: NSID.parse('app.bsky.feed.getLikes'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) => const FeedGetLikesInputConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      parametersToJson: const FeedGetLikesInputConverter().toJson,
      outputFromJson: (json) => const FeedGetLikesOutputConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      outputToJson: const FeedGetLikesOutputConverter().toJson,
      errors: const [],
    );

final appBskyFeedGetLikes = methodDescriptor;
