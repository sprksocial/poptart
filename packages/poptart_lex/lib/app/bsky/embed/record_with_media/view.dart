// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../record/view.dart';
import './union_view_media.dart';

part 'view.freezed.dart';
part 'view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class EmbedRecordWithMediaView with _$EmbedRecordWithMediaView {
  static const knownProps = <String>['record', 'media'];

  @JsonSerializable(includeIfNull: false)
  const factory EmbedRecordWithMediaView({
    @Default('app.bsky.embed.recordWithMedia#view') String $type,
    @EmbedRecordViewConverter() required EmbedRecordView record,
    @UEmbedRecordWithMediaViewMediaConverter()
    required UEmbedRecordWithMediaViewMedia media,

    Map<String, dynamic>? $unknown,
  }) = _EmbedRecordWithMediaView;

  factory EmbedRecordWithMediaView.fromJson(Map<String, Object?> json) =>
      _$EmbedRecordWithMediaViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.embed.recordWithMedia#view';
  }
}

final class EmbedRecordWithMediaViewConverter
    extends JsonConverter<EmbedRecordWithMediaView, Map<String, dynamic>> {
  const EmbedRecordWithMediaViewConverter();

  @override
  EmbedRecordWithMediaView fromJson(Map<String, dynamic> json) {
    return EmbedRecordWithMediaView.fromJson(
      translate(json, EmbedRecordWithMediaView.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(EmbedRecordWithMediaView object) =>
      untranslate(object.toJson());
}
