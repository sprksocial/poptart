// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './input.dart';
import './output.dart';
import './result_available.dart';
import './result_unavailable.dart';
import './suggestion.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final resultAvailableDescriptor = XRPCObjectDescriptor<ResultAvailable>(
  nsid: 'com.atproto.temp.checkHandleAvailability',
  defName: 'resultAvailable',
  fromJson: (json) =>
      const ResultAvailableConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ResultAvailableConverter().toJson,
  matches: ResultAvailable.validate,
);

final resultUnavailableDescriptor = XRPCObjectDescriptor<ResultUnavailable>(
  nsid: 'com.atproto.temp.checkHandleAvailability',
  defName: 'resultUnavailable',
  fromJson: (json) =>
      const ResultUnavailableConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ResultUnavailableConverter().toJson,
  matches: ResultUnavailable.validate,
);

final suggestionDescriptor = XRPCObjectDescriptor<Suggestion>(
  nsid: 'com.atproto.temp.checkHandleAvailability',
  defName: 'suggestion',
  fromJson: (json) =>
      const SuggestionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SuggestionConverter().toJson,
  matches: Suggestion.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      TempCheckHandleAvailabilityInput,
      EmptyData,
      TempCheckHandleAvailabilityOutput
    >(
      nsid: NSID.parse('com.atproto.temp.checkHandleAvailability'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const TempCheckHandleAvailabilityInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson:
          const TempCheckHandleAvailabilityInputConverter().toJson,
      outputFromJson: (json) =>
          const TempCheckHandleAvailabilityOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson: const TempCheckHandleAvailabilityOutputConverter().toJson,
      errors: const ['InvalidEmail'],
    );

final comAtprotoTempCheckHandleAvailability = methodDescriptor;
