// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'view_detached.freezed.dart';
part 'view_detached.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class EmbedRecordViewDetached with _$EmbedRecordViewDetached {
  static const knownProps = <String>['uri', 'detached'];

  @JsonSerializable(includeIfNull: false)
  const factory EmbedRecordViewDetached({
    @Default('app.bsky.embed.record#viewDetached') String $type,
    @AtUriConverter() required AtUri uri,
    required bool detached,

    Map<String, dynamic>? $unknown,
  }) = _EmbedRecordViewDetached;

  factory EmbedRecordViewDetached.fromJson(Map<String, Object?> json) =>
      _$EmbedRecordViewDetachedFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.embed.record#viewDetached';
  }
}

extension EmbedRecordViewDetachedExtension on EmbedRecordViewDetached {
  bool get isDetached => detached;
  bool get isNotDetached => !isDetached;
}

final class EmbedRecordViewDetachedConverter
    extends JsonConverter<EmbedRecordViewDetached, Map<String, dynamic>> {
  const EmbedRecordViewDetachedConverter();

  @override
  EmbedRecordViewDetached fromJson(Map<String, dynamic> json) {
    return EmbedRecordViewDetached.fromJson(
      translate(json, EmbedRecordViewDetached.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(EmbedRecordViewDetached object) =>
      untranslate(object.toJson());
}
