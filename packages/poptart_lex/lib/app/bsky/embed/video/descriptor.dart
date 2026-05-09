// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './caption.dart';
import './main.dart';
import './view.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final embedVideoDescriptor = XRPCObjectDescriptor<EmbedVideo>(
  nsid: 'app.bsky.embed.video',
  defName: 'main',
  fromJson: (json) =>
      const EmbedVideoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedVideoConverter().toJson,
  matches: EmbedVideo.validate,
);

final embedVideoCaptionDescriptor = XRPCObjectDescriptor<EmbedVideoCaption>(
  nsid: 'app.bsky.embed.video',
  defName: 'caption',
  fromJson: (json) =>
      const EmbedVideoCaptionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedVideoCaptionConverter().toJson,
  matches: EmbedVideoCaption.validate,
);

final embedVideoViewDescriptor = XRPCObjectDescriptor<EmbedVideoView>(
  nsid: 'app.bsky.embed.video',
  defName: 'view',
  fromJson: (json) =>
      const EmbedVideoViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedVideoViewConverter().toJson,
  matches: EmbedVideoView.validate,
);
