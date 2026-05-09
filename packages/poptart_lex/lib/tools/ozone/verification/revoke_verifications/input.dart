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
abstract class VerificationRevokeVerificationsInput
    with _$VerificationRevokeVerificationsInput {
  static const knownProps = <String>['uris', 'revokeReason'];

  @JsonSerializable(includeIfNull: false)
  const factory VerificationRevokeVerificationsInput({
    /// The AT-URI of the verification record to revoke.
    @AtUriConverter() required List<AtUri> uris,

    /// Reason for revoking the verification. This is optional and can be omitted if not needed.
    String? revokeReason,

    Map<String, dynamic>? $unknown,
  }) = _VerificationRevokeVerificationsInput;

  factory VerificationRevokeVerificationsInput.fromJson(
    Map<String, Object?> json,
  ) => _$VerificationRevokeVerificationsInputFromJson(json);
}

extension VerificationRevokeVerificationsInputExtension
    on VerificationRevokeVerificationsInput {
  bool get hasRevokeReason => revokeReason != null;
  bool get hasNotRevokeReason => !hasRevokeReason;
}

final class VerificationRevokeVerificationsInputConverter
    extends
        JsonConverter<
          VerificationRevokeVerificationsInput,
          Map<String, dynamic>
        > {
  const VerificationRevokeVerificationsInputConverter();

  @override
  VerificationRevokeVerificationsInput fromJson(Map<String, dynamic> json) {
    return VerificationRevokeVerificationsInput.fromJson(
      translate(json, VerificationRevokeVerificationsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(VerificationRevokeVerificationsInput object) =>
      untranslate(object.toJson());
}
