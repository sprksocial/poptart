// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './draft_embed_local_ref.dart';

part 'draft_embed_image.freezed.dart';
part 'draft_embed_image.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class DraftEmbedImage with _$DraftEmbedImage {
  static const knownProps = <String>['localRef', 'alt'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftEmbedImage({
    @Default('app.bsky.draft.defs#draftEmbedImage') String $type,
    @DraftEmbedLocalRefConverter() required DraftEmbedLocalRef localRef,
    String? alt,

    Map<String, dynamic>? $unknown,
  }) = _DraftEmbedImage;

  factory DraftEmbedImage.fromJson(Map<String, Object?> json) =>
      _$DraftEmbedImageFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.draft.defs#draftEmbedImage';
  }
}

extension DraftEmbedImageExtension on DraftEmbedImage {
  bool get hasAlt => alt != null;
  bool get hasNotAlt => !hasAlt;
}

final class DraftEmbedImageConverter
    extends JsonConverter<DraftEmbedImage, Map<String, dynamic>> {
  const DraftEmbedImageConverter();

  @override
  DraftEmbedImage fromJson(Map<String, dynamic> json) {
    return DraftEmbedImage.fromJson(
      translate(json, DraftEmbedImage.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DraftEmbedImage object) =>
      untranslate(object.toJson());
}
