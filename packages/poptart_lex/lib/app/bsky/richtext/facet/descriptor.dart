// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './byte_slice.dart';
import './link.dart';
import './main.dart';
import './mention.dart';
import './tag.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final richtextFacetDescriptor = XRPCObjectDescriptor<RichtextFacet>(
  nsid: 'app.bsky.richtext.facet',
  defName: 'main',
  fromJson: (json) =>
      const RichtextFacetConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RichtextFacetConverter().toJson,
  matches: RichtextFacet.validate,
);

final richtextFacetMentionDescriptor =
    XRPCObjectDescriptor<RichtextFacetMention>(
      nsid: 'app.bsky.richtext.facet',
      defName: 'mention',
      fromJson: (json) => const RichtextFacetMentionConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const RichtextFacetMentionConverter().toJson,
      matches: RichtextFacetMention.validate,
    );

final richtextFacetLinkDescriptor = XRPCObjectDescriptor<RichtextFacetLink>(
  nsid: 'app.bsky.richtext.facet',
  defName: 'link',
  fromJson: (json) =>
      const RichtextFacetLinkConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RichtextFacetLinkConverter().toJson,
  matches: RichtextFacetLink.validate,
);

final richtextFacetTagDescriptor = XRPCObjectDescriptor<RichtextFacetTag>(
  nsid: 'app.bsky.richtext.facet',
  defName: 'tag',
  fromJson: (json) =>
      const RichtextFacetTagConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RichtextFacetTagConverter().toJson,
  matches: RichtextFacetTag.validate,
);

final richtextFacetByteSliceDescriptor =
    XRPCObjectDescriptor<RichtextFacetByteSlice>(
      nsid: 'app.bsky.richtext.facet',
      defName: 'byteSlice',
      fromJson: (json) => const RichtextFacetByteSliceConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const RichtextFacetByteSliceConverter().toJson,
      matches: RichtextFacetByteSlice.validate,
    );
