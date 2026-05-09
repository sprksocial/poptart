// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './output.dart';
import './suggestion.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final suggestionDescriptor = XRPCObjectDescriptor<Suggestion>(
  nsid: 'app.bsky.unspecced.getTaggedSuggestions',
  defName: 'suggestion',
  fromJson: (json) =>
      const SuggestionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SuggestionConverter().toJson,
  matches: Suggestion.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      EmptyData,
      UnspeccedGetTaggedSuggestionsOutput
    >(
      nsid: NSID.parse('app.bsky.unspecced.getTaggedSuggestions'),
      kind: XRPCMethodKind.query,
      outputFromJson: (json) =>
          const UnspeccedGetTaggedSuggestionsOutputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      outputToJson: const UnspeccedGetTaggedSuggestionsOutputConverter().toJson,
      errors: const [],
    );

final appBskyUnspeccedGetTaggedSuggestions = methodDescriptor;
