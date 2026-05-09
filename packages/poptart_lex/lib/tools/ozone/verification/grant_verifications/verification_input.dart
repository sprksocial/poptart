// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'verification_input.freezed.dart';
part 'verification_input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class VerificationInput with _$VerificationInput {
  static const knownProps = <String>[
    'subject',
    'handle',
    'displayName',
    'createdAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory VerificationInput({
    @Default('tools.ozone.verification.grantVerifications#verificationInput')
    String $type,

    /// The did of the subject being verified
    required String subject,

    /// Handle of the subject the verification applies to at the moment of verifying.
    required String handle,

    /// Display name of the subject the verification applies to at the moment of verifying.
    required String displayName,

    /// Timestamp for verification record. Defaults to current time when not specified.
    DateTime? createdAt,

    Map<String, dynamic>? $unknown,
  }) = _VerificationInput;

  factory VerificationInput.fromJson(Map<String, Object?> json) =>
      _$VerificationInputFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.verification.grantVerifications#verificationInput';
  }
}

extension VerificationInputExtension on VerificationInput {
  bool get hasCreatedAt => createdAt != null;
  bool get hasNotCreatedAt => !hasCreatedAt;
}

final class VerificationInputConverter
    extends JsonConverter<VerificationInput, Map<String, dynamic>> {
  const VerificationInputConverter();

  @override
  VerificationInput fromJson(Map<String, dynamic> json) {
    return VerificationInput.fromJson(
      translate(json, VerificationInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(VerificationInput object) =>
      untranslate(object.toJson());
}
