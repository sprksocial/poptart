// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'video_details.freezed.dart';
part 'video_details.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class VideoDetails with _$VideoDetails {
  static const knownProps = <String>['width', 'height', 'length'];

  @JsonSerializable(includeIfNull: false)
  const factory VideoDetails({
    @Default('tools.ozone.moderation.defs#videoDetails') String $type,
    required int width,
    required int height,
    required int length,

    Map<String, dynamic>? $unknown,
  }) = _VideoDetails;

  factory VideoDetails.fromJson(Map<String, Object?> json) =>
      _$VideoDetailsFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#videoDetails';
  }
}

final class VideoDetailsConverter
    extends JsonConverter<VideoDetails, Map<String, dynamic>> {
  const VideoDetailsConverter();

  @override
  VideoDetails fromJson(Map<String, dynamic> json) {
    return VideoDetails.fromJson(translate(json, VideoDetails.knownProps));
  }

  @override
  Map<String, dynamic> toJson(VideoDetails object) =>
      untranslate(object.toJson());
}
