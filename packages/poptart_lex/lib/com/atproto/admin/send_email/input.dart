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
abstract class AdminSendEmailInput with _$AdminSendEmailInput {
  static const knownProps = <String>[
    'recipientDid',
    'content',
    'subject',
    'senderDid',
    'comment',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory AdminSendEmailInput({
    required String recipientDid,
    required String content,
    String? subject,
    required String senderDid,

    /// Additional comment by the sender that won't be used in the email itself but helpful to provide more context for moderators/reviewers
    String? comment,

    Map<String, dynamic>? $unknown,
  }) = _AdminSendEmailInput;

  factory AdminSendEmailInput.fromJson(Map<String, Object?> json) =>
      _$AdminSendEmailInputFromJson(json);
}

extension AdminSendEmailInputExtension on AdminSendEmailInput {
  bool get hasSubject => subject != null;
  bool get hasNotSubject => !hasSubject;
  bool get hasComment => comment != null;
  bool get hasNotComment => !hasComment;
}

final class AdminSendEmailInputConverter
    extends JsonConverter<AdminSendEmailInput, Map<String, dynamic>> {
  const AdminSendEmailInputConverter();

  @override
  AdminSendEmailInput fromJson(Map<String, dynamic> json) {
    return AdminSendEmailInput.fromJson(
      translate(json, AdminSendEmailInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(AdminSendEmailInput object) =>
      untranslate(object.toJson());
}
