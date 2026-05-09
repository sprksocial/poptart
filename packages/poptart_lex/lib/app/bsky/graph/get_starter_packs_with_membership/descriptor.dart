// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './starter_pack_with_membership.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final starterPackWithMembershipDescriptor =
    XRPCObjectDescriptor<StarterPackWithMembership>(
      nsid: 'app.bsky.graph.getStarterPacksWithMembership',
      defName: 'starterPackWithMembership',
      fromJson: (json) => const StarterPackWithMembershipConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const StarterPackWithMembershipConverter().toJson,
      matches: StarterPackWithMembership.validate,
    );

final methodDescriptor =
    XRPCMethodDescriptor<
      GraphGetStarterPacksWithMembershipInput,
      EmptyData,
      GraphGetStarterPacksWithMembershipOutput
    >(
      nsid: NSID.parse('app.bsky.graph.getStarterPacksWithMembership'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const GraphGetStarterPacksWithMembershipInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson:
          const GraphGetStarterPacksWithMembershipInputConverter().toJson,
      outputFromJson: (json) =>
          const GraphGetStarterPacksWithMembershipOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson:
          const GraphGetStarterPacksWithMembershipOutputConverter().toJson,
      errors: const [],
    );

final appBskyGraphGetStarterPacksWithMembership = methodDescriptor;
