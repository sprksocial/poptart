// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './labeler_policies.dart';
import './labeler_view.dart';
import './labeler_view_detailed.dart';
import './labeler_viewer_state.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final labelerViewDescriptor = XRPCObjectDescriptor<LabelerView>(
  nsid: 'app.bsky.labeler.defs',
  defName: 'labelerView',
  fromJson: (json) =>
      const LabelerViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelerViewConverter().toJson,
  matches: LabelerView.validate,
);

final labelerViewDetailedDescriptor = XRPCObjectDescriptor<LabelerViewDetailed>(
  nsid: 'app.bsky.labeler.defs',
  defName: 'labelerViewDetailed',
  fromJson: (json) => const LabelerViewDetailedConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const LabelerViewDetailedConverter().toJson,
  matches: LabelerViewDetailed.validate,
);

final labelerViewerStateDescriptor = XRPCObjectDescriptor<LabelerViewerState>(
  nsid: 'app.bsky.labeler.defs',
  defName: 'labelerViewerState',
  fromJson: (json) => const LabelerViewerStateConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const LabelerViewerStateConverter().toJson,
  matches: LabelerViewerState.validate,
);

final labelerPoliciesDescriptor = XRPCObjectDescriptor<LabelerPolicies>(
  nsid: 'app.bsky.labeler.defs',
  defName: 'labelerPolicies',
  fromJson: (json) =>
      const LabelerPoliciesConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelerPoliciesConverter().toJson,
  matches: LabelerPolicies.validate,
);
