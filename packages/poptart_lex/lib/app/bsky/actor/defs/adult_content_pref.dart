// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'adult_content_pref.freezed.dart';
part 'adult_content_pref.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class AdultContentPref with _$AdultContentPref {
  static const knownProps = <String>['enabled'];

  @JsonSerializable(includeIfNull: false)
  const factory AdultContentPref({
    @Default('app.bsky.actor.defs#adultContentPref') String $type,
    @Default(false) bool enabled,

    Map<String, dynamic>? $unknown,
  }) = _AdultContentPref;

  factory AdultContentPref.fromJson(Map<String, Object?> json) =>
      _$AdultContentPrefFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#adultContentPref';
  }
}

extension AdultContentPrefExtension on AdultContentPref {
  bool get isEnabled => enabled;
  bool get isNotEnabled => !isEnabled;
}

final class AdultContentPrefConverter
    extends JsonConverter<AdultContentPref, Map<String, dynamic>> {
  const AdultContentPrefConverter();

  @override
  AdultContentPref fromJson(Map<String, dynamic> json) {
    return AdultContentPref.fromJson(
      translate(json, AdultContentPref.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(AdultContentPref object) =>
      untranslate(object.toJson());
}
