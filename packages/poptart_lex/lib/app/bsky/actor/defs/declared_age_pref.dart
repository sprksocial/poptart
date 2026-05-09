// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'declared_age_pref.freezed.dart';
part 'declared_age_pref.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Read-only preference containing value(s) inferred from the user's declared birthdate. Absence of this preference object in the response indicates that the user has not made a declaration.
@freezed
abstract class DeclaredAgePref with _$DeclaredAgePref {
  static const knownProps = <String>[
    'isOverAge13',
    'isOverAge16',
    'isOverAge18',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory DeclaredAgePref({
    @Default('app.bsky.actor.defs#declaredAgePref') String $type,

    /// Indicates if the user has declared that they are over 13 years of age.
    bool? isOverAge13,

    /// Indicates if the user has declared that they are over 16 years of age.
    bool? isOverAge16,

    /// Indicates if the user has declared that they are over 18 years of age.
    bool? isOverAge18,

    Map<String, dynamic>? $unknown,
  }) = _DeclaredAgePref;

  factory DeclaredAgePref.fromJson(Map<String, Object?> json) =>
      _$DeclaredAgePrefFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#declaredAgePref';
  }
}

extension DeclaredAgePrefExtension on DeclaredAgePref {
  bool get isIsOverAge13 => isOverAge13 ?? false;
  bool get isNotIsOverAge13 => !isIsOverAge13;
  bool get isIsOverAge16 => isOverAge16 ?? false;
  bool get isNotIsOverAge16 => !isIsOverAge16;
  bool get isIsOverAge18 => isOverAge18 ?? false;
  bool get isNotIsOverAge18 => !isIsOverAge18;
}

final class DeclaredAgePrefConverter
    extends JsonConverter<DeclaredAgePref, Map<String, dynamic>> {
  const DeclaredAgePrefConverter();

  @override
  DeclaredAgePref fromJson(Map<String, dynamic> json) {
    return DeclaredAgePref.fromJson(
      translate(json, DeclaredAgePref.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DeclaredAgePref object) =>
      untranslate(object.toJson());
}
