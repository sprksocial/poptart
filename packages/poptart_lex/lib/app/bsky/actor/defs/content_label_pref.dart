// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './content_label_pref_visibility.dart';

part 'content_label_pref.freezed.dart';
part 'content_label_pref.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ContentLabelPref with _$ContentLabelPref {
  static const knownProps = <String>['labelerDid', 'label', 'visibility'];

  @JsonSerializable(includeIfNull: false)
  const factory ContentLabelPref({
    @Default('app.bsky.actor.defs#contentLabelPref') String $type,

    /// Which labeler does this preference apply to? If undefined, applies globally.
    String? labelerDid,
    required String label,
    @ContentLabelPrefVisibilityConverter()
    required ContentLabelPrefVisibility visibility,

    Map<String, dynamic>? $unknown,
  }) = _ContentLabelPref;

  factory ContentLabelPref.fromJson(Map<String, Object?> json) =>
      _$ContentLabelPrefFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#contentLabelPref';
  }
}

extension ContentLabelPrefExtension on ContentLabelPref {
  bool get hasLabelerDid => labelerDid != null;
  bool get hasNotLabelerDid => !hasLabelerDid;
}

final class ContentLabelPrefConverter
    extends JsonConverter<ContentLabelPref, Map<String, dynamic>> {
  const ContentLabelPrefConverter();

  @override
  ContentLabelPref fromJson(Map<String, dynamic> json) {
    return ContentLabelPref.fromJson(
      translate(json, ContentLabelPref.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ContentLabelPref object) =>
      untranslate(object.toJson());
}
