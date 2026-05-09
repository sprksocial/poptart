// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './draft.dart';

part 'draft_with_id.freezed.dart';
part 'draft_with_id.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A draft with an identifier, used to store drafts in private storage (stash).
@freezed
abstract class DraftWithId with _$DraftWithId {
  static const knownProps = <String>['id', 'draft'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftWithId({
    @Default('app.bsky.draft.defs#draftWithId') String $type,

    /// A TID to be used as a draft identifier.
    required String id,
    @DraftConverter() required Draft draft,

    Map<String, dynamic>? $unknown,
  }) = _DraftWithId;

  factory DraftWithId.fromJson(Map<String, Object?> json) =>
      _$DraftWithIdFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.draft.defs#draftWithId';
  }
}

final class DraftWithIdConverter
    extends JsonConverter<DraftWithId, Map<String, dynamic>> {
  const DraftWithIdConverter();

  @override
  DraftWithId fromJson(Map<String, dynamic> json) {
    return DraftWithId.fromJson(translate(json, DraftWithId.knownProps));
  }

  @override
  Map<String, dynamic> toJson(DraftWithId object) =>
      untranslate(object.toJson());
}
