// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './image.dart';
import './main.dart';
import './view.dart';
import './view_image.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final embedImagesDescriptor = XRPCObjectDescriptor<EmbedImages>(
  nsid: 'app.bsky.embed.images',
  defName: 'main',
  fromJson: (json) =>
      const EmbedImagesConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedImagesConverter().toJson,
  matches: EmbedImages.validate,
);

final embedImagesImageDescriptor = XRPCObjectDescriptor<EmbedImagesImage>(
  nsid: 'app.bsky.embed.images',
  defName: 'image',
  fromJson: (json) =>
      const EmbedImagesImageConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedImagesImageConverter().toJson,
  matches: EmbedImagesImage.validate,
);

final embedImagesViewDescriptor = XRPCObjectDescriptor<EmbedImagesView>(
  nsid: 'app.bsky.embed.images',
  defName: 'view',
  fromJson: (json) =>
      const EmbedImagesViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedImagesViewConverter().toJson,
  matches: EmbedImagesView.validate,
);

final embedImagesViewImageDescriptor =
    XRPCObjectDescriptor<EmbedImagesViewImage>(
      nsid: 'app.bsky.embed.images',
      defName: 'viewImage',
      fromJson: (json) => const EmbedImagesViewImageConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const EmbedImagesViewImageConverter().toJson,
      matches: EmbedImagesViewImage.validate,
    );
