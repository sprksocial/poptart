// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './disable_rule.dart';
import './main.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final feedPostgateRecordDescriptor = XRPCRecordDescriptor<FeedPostgateRecord>(
  nsid: 'app.bsky.feed.postgate',
  defName: 'main',
  fromJson: (json) => const FeedPostgateRecordConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const FeedPostgateRecordConverter().toJson,
  matches: FeedPostgateRecord.validate,
  key: 'tid',
);

final disableRuleDescriptor = XRPCObjectDescriptor<DisableRule>(
  nsid: 'app.bsky.feed.postgate',
  defName: 'disableRule',
  fromJson: (json) =>
      const DisableRuleConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DisableRuleConverter().toJson,
  matches: DisableRule.validate,
);
