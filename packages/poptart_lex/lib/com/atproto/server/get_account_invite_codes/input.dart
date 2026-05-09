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
abstract class ServerGetAccountInviteCodesInput
    with _$ServerGetAccountInviteCodesInput {
  static const knownProps = <String>['includeUsed', 'createAvailable'];

  @JsonSerializable(includeIfNull: false)
  const factory ServerGetAccountInviteCodesInput({
    @Default(true) bool includeUsed,

    /// Controls whether any new 'earned' but not 'created' invites should be created.
    @Default(true) bool createAvailable,

    Map<String, dynamic>? $unknown,
  }) = _ServerGetAccountInviteCodesInput;

  factory ServerGetAccountInviteCodesInput.fromJson(
    Map<String, Object?> json,
  ) => _$ServerGetAccountInviteCodesInputFromJson(json);
}

extension ServerGetAccountInviteCodesInputExtension
    on ServerGetAccountInviteCodesInput {
  bool get isIncludeUsed => includeUsed;
  bool get isNotIncludeUsed => !isIncludeUsed;
  bool get isCreateAvailable => createAvailable;
  bool get isNotCreateAvailable => !isCreateAvailable;
}

final class ServerGetAccountInviteCodesInputConverter
    extends
        JsonConverter<ServerGetAccountInviteCodesInput, Map<String, dynamic>> {
  const ServerGetAccountInviteCodesInputConverter();

  @override
  ServerGetAccountInviteCodesInput fromJson(Map<String, dynamic> json) {
    return ServerGetAccountInviteCodesInput.fromJson(
      translate(json, ServerGetAccountInviteCodesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ServerGetAccountInviteCodesInput object) =>
      untranslate(object.toJson());
}
