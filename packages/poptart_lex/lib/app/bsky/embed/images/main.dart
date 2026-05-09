// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './image.dart';

part 'main.freezed.dart';
part 'main.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class EmbedImages with _$EmbedImages {
  static const knownProps = <String>['images'];

  @JsonSerializable(includeIfNull: false)
  const factory EmbedImages({
    @Default('app.bsky.embed.images') String $type,
    @EmbedImagesImageConverter() required List<EmbedImagesImage> images,

    Map<String, dynamic>? $unknown,
  }) = _EmbedImages;

  factory EmbedImages.fromJson(Map<String, Object?> json) =>
      _$EmbedImagesFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.embed.images' ||
        object['\$type'] == 'app.bsky.embed.images#main';
  }
}

final class EmbedImagesConverter
    extends JsonConverter<EmbedImages, Map<String, dynamic>> {
  const EmbedImagesConverter();

  @override
  EmbedImages fromJson(Map<String, dynamic> json) {
    return EmbedImages.fromJson(translate(json, EmbedImages.knownProps));
  }

  @override
  Map<String, dynamic> toJson(EmbedImages object) =>
      untranslate(object.toJson());
}
