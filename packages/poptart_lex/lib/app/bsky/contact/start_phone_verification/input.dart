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
abstract class ContactStartPhoneVerificationInput
    with _$ContactStartPhoneVerificationInput {
  static const knownProps = <String>['phone'];

  @JsonSerializable(includeIfNull: false)
  const factory ContactStartPhoneVerificationInput({
    /// The phone number to receive the code via SMS.
    required String phone,

    Map<String, dynamic>? $unknown,
  }) = _ContactStartPhoneVerificationInput;

  factory ContactStartPhoneVerificationInput.fromJson(
    Map<String, Object?> json,
  ) => _$ContactStartPhoneVerificationInputFromJson(json);
}

final class ContactStartPhoneVerificationInputConverter
    extends
        JsonConverter<
          ContactStartPhoneVerificationInput,
          Map<String, dynamic>
        > {
  const ContactStartPhoneVerificationInputConverter();

  @override
  ContactStartPhoneVerificationInput fromJson(Map<String, dynamic> json) {
    return ContactStartPhoneVerificationInput.fromJson(
      translate(json, ContactStartPhoneVerificationInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ContactStartPhoneVerificationInput object) =>
      untranslate(object.toJson());
}
