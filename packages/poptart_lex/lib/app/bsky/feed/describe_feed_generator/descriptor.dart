// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './feed.dart';
import './links.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final feedDescriptor = XRPCObjectDescriptor<Feed>(
  nsid: 'app.bsky.feed.describeFeedGenerator',
  defName: 'feed',
  fromJson: (json) =>
      const FeedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FeedConverter().toJson,
  matches: Feed.validate,
);

final linksDescriptor = XRPCObjectDescriptor<Links>(
  nsid: 'app.bsky.feed.describeFeedGenerator',
  defName: 'links',
  fromJson: (json) =>
      const LinksConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LinksConverter().toJson,
  matches: Links.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<EmptyData, EmptyData, FeedDescribeFeedGeneratorOutput>(
      nsid: NSID.parse('app.bsky.feed.describeFeedGenerator'),
      kind: XRPCMethodKind.query,
      outputFromJson: (json) => const FeedDescribeFeedGeneratorOutputConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const FeedDescribeFeedGeneratorOutputConverter().toJson,
      errors: const [],
    );

final appBskyFeedDescribeFeedGenerator = methodDescriptor;
