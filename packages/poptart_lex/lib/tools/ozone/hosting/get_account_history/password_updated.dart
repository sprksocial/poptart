// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'password_updated.freezed.dart';
part 'password_updated.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class PasswordUpdated with _$PasswordUpdated {
  static const knownProps = <String>[];

  @JsonSerializable(includeIfNull: false)
  const factory PasswordUpdated({
    @Default('tools.ozone.hosting.getAccountHistory#passwordUpdated')
    String $type,

    Map<String, dynamic>? $unknown,
  }) = _PasswordUpdated;

  factory PasswordUpdated.fromJson(Map<String, Object?> json) =>
      _$PasswordUpdatedFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.hosting.getAccountHistory#passwordUpdated';
  }
}

final class PasswordUpdatedConverter
    extends JsonConverter<PasswordUpdated, Map<String, dynamic>> {
  const PasswordUpdatedConverter();

  @override
  PasswordUpdated fromJson(Map<String, dynamic> json) {
    return PasswordUpdated.fromJson(
      translate(json, PasswordUpdated.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(PasswordUpdated object) =>
      untranslate(object.toJson());
}
