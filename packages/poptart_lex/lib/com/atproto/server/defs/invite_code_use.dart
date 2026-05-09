// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'invite_code_use.freezed.dart';
part 'invite_code_use.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class InviteCodeUse with _$InviteCodeUse {
  static const knownProps = <String>['usedBy', 'usedAt'];

  @JsonSerializable(includeIfNull: false)
  const factory InviteCodeUse({
    @Default('com.atproto.server.defs#inviteCodeUse') String $type,
    required String usedBy,
    required DateTime usedAt,

    Map<String, dynamic>? $unknown,
  }) = _InviteCodeUse;

  factory InviteCodeUse.fromJson(Map<String, Object?> json) =>
      _$InviteCodeUseFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'com.atproto.server.defs#inviteCodeUse';
  }
}

final class InviteCodeUseConverter
    extends JsonConverter<InviteCodeUse, Map<String, dynamic>> {
  const InviteCodeUseConverter();

  @override
  InviteCodeUse fromJson(Map<String, dynamic> json) {
    return InviteCodeUse.fromJson(translate(json, InviteCodeUse.knownProps));
  }

  @override
  Map<String, dynamic> toJson(InviteCodeUse object) =>
      untranslate(object.toJson());
}
