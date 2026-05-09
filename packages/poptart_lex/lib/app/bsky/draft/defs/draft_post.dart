// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './union_draft_post_labels.dart';
import './draft_embed_image.dart';
import './draft_embed_video.dart';
import './draft_embed_external.dart';
import './draft_embed_record.dart';

part 'draft_post.freezed.dart';
part 'draft_post.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// One of the posts that compose a draft.
@freezed
abstract class DraftPost with _$DraftPost {
  static const knownProps = <String>[
    'text',
    'labels',
    'embedImages',
    'embedVideos',
    'embedExternals',
    'embedRecords',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory DraftPost({
    @Default('app.bsky.draft.defs#draftPost') String $type,

    /// The primary post content. It has a higher limit than post contents to allow storing a larger text that can later be refined into smaller posts.
    required String text,
    @UDraftPostLabelsConverter() UDraftPostLabels? labels,
    @DraftEmbedImageConverter() List<DraftEmbedImage>? embedImages,
    @DraftEmbedVideoConverter() List<DraftEmbedVideo>? embedVideos,
    @DraftEmbedExternalConverter() List<DraftEmbedExternal>? embedExternals,
    @DraftEmbedRecordConverter() List<DraftEmbedRecord>? embedRecords,

    Map<String, dynamic>? $unknown,
  }) = _DraftPost;

  factory DraftPost.fromJson(Map<String, Object?> json) =>
      _$DraftPostFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.draft.defs#draftPost';
  }
}

extension DraftPostExtension on DraftPost {
  bool get hasLabels => labels != null;
  bool get hasNotLabels => !hasLabels;
}

final class DraftPostConverter
    extends JsonConverter<DraftPost, Map<String, dynamic>> {
  const DraftPostConverter();

  @override
  DraftPost fromJson(Map<String, dynamic> json) {
    return DraftPost.fromJson(translate(json, DraftPost.knownProps));
  }

  @override
  Map<String, dynamic> toJson(DraftPost object) => untranslate(object.toJson());
}
