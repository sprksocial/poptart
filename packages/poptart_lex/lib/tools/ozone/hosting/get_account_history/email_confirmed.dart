// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'email_confirmed.freezed.dart';
part 'email_confirmed.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class EmailConfirmed with _$EmailConfirmed {
  static const knownProps = <String>['email'];

  @JsonSerializable(includeIfNull: false)
  const factory EmailConfirmed({
    @Default('tools.ozone.hosting.getAccountHistory#emailConfirmed')
    String $type,
    required String email,

    Map<String, dynamic>? $unknown,
  }) = _EmailConfirmed;

  factory EmailConfirmed.fromJson(Map<String, Object?> json) =>
      _$EmailConfirmedFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.hosting.getAccountHistory#emailConfirmed';
  }
}

final class EmailConfirmedConverter
    extends JsonConverter<EmailConfirmed, Map<String, dynamic>> {
  const EmailConfirmedConverter();

  @override
  EmailConfirmed fromJson(Map<String, dynamic> json) {
    return EmailConfirmed.fromJson(translate(json, EmailConfirmed.knownProps));
  }

  @override
  Map<String, dynamic> toJson(EmailConfirmed object) =>
      untranslate(object.toJson());
}
