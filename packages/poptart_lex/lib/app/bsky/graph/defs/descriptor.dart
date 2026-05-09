// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './list_item_view.dart';
import './list_view.dart';
import './list_view_basic.dart';
import './list_viewer_state.dart';
import './not_found_actor.dart';
import './relationship.dart';
import './starter_pack_view.dart';
import './starter_pack_view_basic.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final listViewBasicDescriptor = XRPCObjectDescriptor<ListViewBasic>(
  nsid: 'app.bsky.graph.defs',
  defName: 'listViewBasic',
  fromJson: (json) =>
      const ListViewBasicConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ListViewBasicConverter().toJson,
  matches: ListViewBasic.validate,
);

final listViewDescriptor = XRPCObjectDescriptor<ListView>(
  nsid: 'app.bsky.graph.defs',
  defName: 'listView',
  fromJson: (json) =>
      const ListViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ListViewConverter().toJson,
  matches: ListView.validate,
);

final listItemViewDescriptor = XRPCObjectDescriptor<ListItemView>(
  nsid: 'app.bsky.graph.defs',
  defName: 'listItemView',
  fromJson: (json) =>
      const ListItemViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ListItemViewConverter().toJson,
  matches: ListItemView.validate,
);

final starterPackViewDescriptor = XRPCObjectDescriptor<StarterPackView>(
  nsid: 'app.bsky.graph.defs',
  defName: 'starterPackView',
  fromJson: (json) =>
      const StarterPackViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const StarterPackViewConverter().toJson,
  matches: StarterPackView.validate,
);

final starterPackViewBasicDescriptor =
    XRPCObjectDescriptor<StarterPackViewBasic>(
      nsid: 'app.bsky.graph.defs',
      defName: 'starterPackViewBasic',
      fromJson: (json) => const StarterPackViewBasicConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const StarterPackViewBasicConverter().toJson,
      matches: StarterPackViewBasic.validate,
    );

final listViewerStateDescriptor = XRPCObjectDescriptor<ListViewerState>(
  nsid: 'app.bsky.graph.defs',
  defName: 'listViewerState',
  fromJson: (json) =>
      const ListViewerStateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ListViewerStateConverter().toJson,
  matches: ListViewerState.validate,
);

final notFoundActorDescriptor = XRPCObjectDescriptor<NotFoundActor>(
  nsid: 'app.bsky.graph.defs',
  defName: 'notFoundActor',
  fromJson: (json) =>
      const NotFoundActorConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const NotFoundActorConverter().toJson,
  matches: NotFoundActor.validate,
);

final relationshipDescriptor = XRPCObjectDescriptor<Relationship>(
  nsid: 'app.bsky.graph.defs',
  defName: 'relationship',
  fromJson: (json) =>
      const RelationshipConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RelationshipConverter().toJson,
  matches: Relationship.validate,
);
