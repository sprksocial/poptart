// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './feed_item.dart';
import './main.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final graphStarterpackRecordDescriptor =
    XRPCRecordDescriptor<GraphStarterpackRecord>(
      nsid: 'app.bsky.graph.starterpack',
      defName: 'main',
      fromJson: (json) => const GraphStarterpackRecordConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const GraphStarterpackRecordConverter().toJson,
      matches: GraphStarterpackRecord.validate,
      key: 'tid',
    );

final feedItemDescriptor = XRPCObjectDescriptor<FeedItem>(
  nsid: 'app.bsky.graph.starterpack',
  defName: 'feedItem',
  fromJson: (json) =>
      const FeedItemConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FeedItemConverter().toJson,
  matches: FeedItem.validate,
);
