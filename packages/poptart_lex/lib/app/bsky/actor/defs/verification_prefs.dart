// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'verification_prefs.freezed.dart';
part 'verification_prefs.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Preferences for how verified accounts appear in the app.
@freezed
abstract class VerificationPrefs with _$VerificationPrefs {
  static const knownProps = <String>['hideBadges'];

  @JsonSerializable(includeIfNull: false)
  const factory VerificationPrefs({
    @Default('app.bsky.actor.defs#verificationPrefs') String $type,

    /// Hide the blue check badges for verified accounts and trusted verifiers.
    @Default(false) bool hideBadges,

    Map<String, dynamic>? $unknown,
  }) = _VerificationPrefs;

  factory VerificationPrefs.fromJson(Map<String, Object?> json) =>
      _$VerificationPrefsFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#verificationPrefs';
  }
}

extension VerificationPrefsExtension on VerificationPrefs {
  bool get isHideBadges => hideBadges;
  bool get isNotHideBadges => !isHideBadges;
}

final class VerificationPrefsConverter
    extends JsonConverter<VerificationPrefs, Map<String, dynamic>> {
  const VerificationPrefsConverter();

  @override
  VerificationPrefs fromJson(Map<String, dynamic> json) {
    return VerificationPrefs.fromJson(
      translate(json, VerificationPrefs.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(VerificationPrefs object) =>
      untranslate(object.toJson());
}
