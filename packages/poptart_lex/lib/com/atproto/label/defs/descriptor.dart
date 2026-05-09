// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './label.dart';
import './label_value_definition.dart';
import './label_value_definition_strings.dart';
import './self_label.dart';
import './self_labels.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final labelDescriptor = XRPCObjectDescriptor<Label>(
  nsid: 'com.atproto.label.defs',
  defName: 'label',
  fromJson: (json) =>
      const LabelConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelConverter().toJson,
  matches: Label.validate,
);

final selfLabelsDescriptor = XRPCObjectDescriptor<SelfLabels>(
  nsid: 'com.atproto.label.defs',
  defName: 'selfLabels',
  fromJson: (json) =>
      const SelfLabelsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SelfLabelsConverter().toJson,
  matches: SelfLabels.validate,
);

final selfLabelDescriptor = XRPCObjectDescriptor<SelfLabel>(
  nsid: 'com.atproto.label.defs',
  defName: 'selfLabel',
  fromJson: (json) =>
      const SelfLabelConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SelfLabelConverter().toJson,
  matches: SelfLabel.validate,
);

final labelValueDefinitionDescriptor =
    XRPCObjectDescriptor<LabelValueDefinition>(
      nsid: 'com.atproto.label.defs',
      defName: 'labelValueDefinition',
      fromJson: (json) => const LabelValueDefinitionConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const LabelValueDefinitionConverter().toJson,
      matches: LabelValueDefinition.validate,
    );

final labelValueDefinitionStringsDescriptor =
    XRPCObjectDescriptor<LabelValueDefinitionStrings>(
      nsid: 'com.atproto.label.defs',
      defName: 'labelValueDefinitionStrings',
      fromJson: (json) => const LabelValueDefinitionStringsConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const LabelValueDefinitionStringsConverter().toJson,
      matches: LabelValueDefinitionStrings.validate,
    );
