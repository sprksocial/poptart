// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'draft_embed_external.freezed.dart';
part 'draft_embed_external.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class DraftEmbedExternal with _$DraftEmbedExternal {
  static const knownProps = <String>['uri'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftEmbedExternal({
    @Default('app.bsky.draft.defs#draftEmbedExternal') String $type,
    required String uri,

    Map<String, dynamic>? $unknown,
  }) = _DraftEmbedExternal;

  factory DraftEmbedExternal.fromJson(Map<String, Object?> json) =>
      _$DraftEmbedExternalFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.draft.defs#draftEmbedExternal';
  }
}

final class DraftEmbedExternalConverter
    extends JsonConverter<DraftEmbedExternal, Map<String, dynamic>> {
  const DraftEmbedExternalConverter();

  @override
  DraftEmbedExternal fromJson(Map<String, dynamic> json) {
    return DraftEmbedExternal.fromJson(
      translate(json, DraftEmbedExternal.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DraftEmbedExternal object) =>
      untranslate(object.toJson());
}
