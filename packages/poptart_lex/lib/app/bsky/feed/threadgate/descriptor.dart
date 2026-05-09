// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './follower_rule.dart';
import './following_rule.dart';
import './list_rule.dart';
import './main.dart';
import './mention_rule.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final feedThreadgateRecordDescriptor =
    XRPCRecordDescriptor<FeedThreadgateRecord>(
      nsid: 'app.bsky.feed.threadgate',
      defName: 'main',
      fromJson: (json) => const FeedThreadgateRecordConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const FeedThreadgateRecordConverter().toJson,
      matches: FeedThreadgateRecord.validate,
      key: 'tid',
    );

final mentionRuleDescriptor = XRPCObjectDescriptor<MentionRule>(
  nsid: 'app.bsky.feed.threadgate',
  defName: 'mentionRule',
  fromJson: (json) =>
      const MentionRuleConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MentionRuleConverter().toJson,
  matches: MentionRule.validate,
);

final followerRuleDescriptor = XRPCObjectDescriptor<FollowerRule>(
  nsid: 'app.bsky.feed.threadgate',
  defName: 'followerRule',
  fromJson: (json) =>
      const FollowerRuleConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FollowerRuleConverter().toJson,
  matches: FollowerRule.validate,
);

final followingRuleDescriptor = XRPCObjectDescriptor<FollowingRule>(
  nsid: 'app.bsky.feed.threadgate',
  defName: 'followingRule',
  fromJson: (json) =>
      const FollowingRuleConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FollowingRuleConverter().toJson,
  matches: FollowingRule.validate,
);

final listRuleDescriptor = XRPCObjectDescriptor<ListRule>(
  nsid: 'app.bsky.feed.threadgate',
  defName: 'listRule',
  fromJson: (json) =>
      const ListRuleConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ListRuleConverter().toJson,
  matches: ListRule.validate,
);
