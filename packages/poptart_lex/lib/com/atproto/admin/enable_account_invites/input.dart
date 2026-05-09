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
abstract class AdminEnableAccountInvitesInput
    with _$AdminEnableAccountInvitesInput {
  static const knownProps = <String>['account', 'note'];

  @JsonSerializable(includeIfNull: false)
  const factory AdminEnableAccountInvitesInput({
    required String account,

    /// Optional reason for enabled invites.
    String? note,

    Map<String, dynamic>? $unknown,
  }) = _AdminEnableAccountInvitesInput;

  factory AdminEnableAccountInvitesInput.fromJson(Map<String, Object?> json) =>
      _$AdminEnableAccountInvitesInputFromJson(json);
}

extension AdminEnableAccountInvitesInputExtension
    on AdminEnableAccountInvitesInput {
  bool get hasNote => note != null;
  bool get hasNotNote => !hasNote;
}

final class AdminEnableAccountInvitesInputConverter
    extends
        JsonConverter<AdminEnableAccountInvitesInput, Map<String, dynamic>> {
  const AdminEnableAccountInvitesInputConverter();

  @override
  AdminEnableAccountInvitesInput fromJson(Map<String, dynamic> json) {
    return AdminEnableAccountInvitesInput.fromJson(
      translate(json, AdminEnableAccountInvitesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(AdminEnableAccountInvitesInput object) =>
      untranslate(object.toJson());
}
