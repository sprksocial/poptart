// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './list_with_membership.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final listWithMembershipDescriptor = XRPCObjectDescriptor<ListWithMembership>(
  nsid: 'app.bsky.graph.getListsWithMembership',
  defName: 'listWithMembership',
  fromJson: (json) => const ListWithMembershipConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ListWithMembershipConverter().toJson,
  matches: ListWithMembership.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      GraphGetListsWithMembershipInput,
      EmptyData,
      GraphGetListsWithMembershipOutput
    >(
      nsid: NSID.parse('app.bsky.graph.getListsWithMembership'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const GraphGetListsWithMembershipInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson:
          const GraphGetListsWithMembershipInputConverter().toJson,
      outputFromJson: (json) =>
          const GraphGetListsWithMembershipOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson: const GraphGetListsWithMembershipOutputConverter().toJson,
      errors: const [],
    );

final appBskyGraphGetListsWithMembership = methodDescriptor;
