// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'draft_embed_local_ref.freezed.dart';
part 'draft_embed_local_ref.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class DraftEmbedLocalRef with _$DraftEmbedLocalRef {
  static const knownProps = <String>['path'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftEmbedLocalRef({
    @Default('app.bsky.draft.defs#draftEmbedLocalRef') String $type,

    /// Local, on-device ref to file to be embedded. Embeds are currently device-bound for drafts.
    required String path,

    Map<String, dynamic>? $unknown,
  }) = _DraftEmbedLocalRef;

  factory DraftEmbedLocalRef.fromJson(Map<String, Object?> json) =>
      _$DraftEmbedLocalRefFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.draft.defs#draftEmbedLocalRef';
  }
}

final class DraftEmbedLocalRefConverter
    extends JsonConverter<DraftEmbedLocalRef, Map<String, dynamic>> {
  const DraftEmbedLocalRefConverter();

  @override
  DraftEmbedLocalRef fromJson(Map<String, dynamic> json) {
    return DraftEmbedLocalRef.fromJson(
      translate(json, DraftEmbedLocalRef.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DraftEmbedLocalRef object) =>
      untranslate(object.toJson());
}
