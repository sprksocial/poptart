// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ContactVerifyPhoneInput with _$ContactVerifyPhoneInput {
  static const knownProps = <String>['phone', 'code'];

  @JsonSerializable(includeIfNull: false)
  const factory ContactVerifyPhoneInput({
    /// The phone number to verify. Should be the same as the one passed to `app.bsky.contact.startPhoneVerification`.
    required String phone,

    /// The code received via SMS as a result of the call to `app.bsky.contact.startPhoneVerification`.
    required String code,

    Map<String, dynamic>? $unknown,
  }) = _ContactVerifyPhoneInput;

  factory ContactVerifyPhoneInput.fromJson(Map<String, Object?> json) =>
      _$ContactVerifyPhoneInputFromJson(json);
}

final class ContactVerifyPhoneInputConverter
    extends JsonConverter<ContactVerifyPhoneInput, Map<String, dynamic>> {
  const ContactVerifyPhoneInputConverter();

  @override
  ContactVerifyPhoneInput fromJson(Map<String, dynamic> json) {
    return ContactVerifyPhoneInput.fromJson(
      translate(json, ContactVerifyPhoneInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ContactVerifyPhoneInput object) =>
      untranslate(object.toJson());
}
