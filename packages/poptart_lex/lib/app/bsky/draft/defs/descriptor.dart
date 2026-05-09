// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './draft.dart';
import './draft_embed_caption.dart';
import './draft_embed_external.dart';
import './draft_embed_image.dart';
import './draft_embed_local_ref.dart';
import './draft_embed_record.dart';
import './draft_embed_video.dart';
import './draft_post.dart';
import './draft_view.dart';
import './draft_with_id.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final draftWithIdDescriptor = XRPCObjectDescriptor<DraftWithId>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftWithId',
  fromJson: (json) =>
      const DraftWithIdConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftWithIdConverter().toJson,
  matches: DraftWithId.validate,
);

final draftDescriptor = XRPCObjectDescriptor<Draft>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draft',
  fromJson: (json) =>
      const DraftConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftConverter().toJson,
  matches: Draft.validate,
);

final draftPostDescriptor = XRPCObjectDescriptor<DraftPost>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftPost',
  fromJson: (json) =>
      const DraftPostConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftPostConverter().toJson,
  matches: DraftPost.validate,
);

final draftViewDescriptor = XRPCObjectDescriptor<DraftView>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftView',
  fromJson: (json) =>
      const DraftViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftViewConverter().toJson,
  matches: DraftView.validate,
);

final draftEmbedLocalRefDescriptor = XRPCObjectDescriptor<DraftEmbedLocalRef>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedLocalRef',
  fromJson: (json) => const DraftEmbedLocalRefConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const DraftEmbedLocalRefConverter().toJson,
  matches: DraftEmbedLocalRef.validate,
);

final draftEmbedCaptionDescriptor = XRPCObjectDescriptor<DraftEmbedCaption>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedCaption',
  fromJson: (json) =>
      const DraftEmbedCaptionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftEmbedCaptionConverter().toJson,
  matches: DraftEmbedCaption.validate,
);

final draftEmbedImageDescriptor = XRPCObjectDescriptor<DraftEmbedImage>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedImage',
  fromJson: (json) =>
      const DraftEmbedImageConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftEmbedImageConverter().toJson,
  matches: DraftEmbedImage.validate,
);

final draftEmbedVideoDescriptor = XRPCObjectDescriptor<DraftEmbedVideo>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedVideo',
  fromJson: (json) =>
      const DraftEmbedVideoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftEmbedVideoConverter().toJson,
  matches: DraftEmbedVideo.validate,
);

final draftEmbedExternalDescriptor = XRPCObjectDescriptor<DraftEmbedExternal>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedExternal',
  fromJson: (json) => const DraftEmbedExternalConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const DraftEmbedExternalConverter().toJson,
  matches: DraftEmbedExternal.validate,
);

final draftEmbedRecordDescriptor = XRPCObjectDescriptor<DraftEmbedRecord>(
  nsid: 'app.bsky.draft.defs',
  defName: 'draftEmbedRecord',
  fromJson: (json) =>
      const DraftEmbedRecordConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DraftEmbedRecordConverter().toJson,
  matches: DraftEmbedRecord.validate,
);
