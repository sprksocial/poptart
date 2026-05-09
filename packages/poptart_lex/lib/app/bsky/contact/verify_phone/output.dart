// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ContactVerifyPhoneOutput with _$ContactVerifyPhoneOutput {
  static const knownProps = <String>['token'];

  @JsonSerializable(includeIfNull: false)
  const factory ContactVerifyPhoneOutput({
    /// JWT to be used in a call to `app.bsky.contact.importContacts`. It is only valid for a single call.
    required String token,

    Map<String, dynamic>? $unknown,
  }) = _ContactVerifyPhoneOutput;

  factory ContactVerifyPhoneOutput.fromJson(Map<String, Object?> json) =>
      _$ContactVerifyPhoneOutputFromJson(json);
}

final class ContactVerifyPhoneOutputConverter
    extends JsonConverter<ContactVerifyPhoneOutput, Map<String, dynamic>> {
  const ContactVerifyPhoneOutputConverter();

  @override
  ContactVerifyPhoneOutput fromJson(Map<String, dynamic> json) {
    return ContactVerifyPhoneOutput.fromJson(
      translate(json, ContactVerifyPhoneOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ContactVerifyPhoneOutput object) =>
      untranslate(object.toJson());
}
