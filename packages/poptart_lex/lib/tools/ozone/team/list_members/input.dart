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
abstract class TeamListMembersInput with _$TeamListMembersInput {
  static const knownProps = <String>[
    'q',
    'disabled',
    'roles',
    'limit',
    'cursor',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory TeamListMembersInput({
    String? q,
    bool? disabled,
    List<String>? roles,
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _TeamListMembersInput;

  factory TeamListMembersInput.fromJson(Map<String, Object?> json) =>
      _$TeamListMembersInputFromJson(json);
}

extension TeamListMembersInputExtension on TeamListMembersInput {
  bool get hasQ => q != null;
  bool get hasNotQ => !hasQ;
  bool get isDisabled => disabled ?? false;
  bool get isNotDisabled => !isDisabled;
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class TeamListMembersInputConverter
    extends JsonConverter<TeamListMembersInput, Map<String, dynamic>> {
  const TeamListMembersInputConverter();

  @override
  TeamListMembersInput fromJson(Map<String, dynamic> json) {
    return TeamListMembersInput.fromJson(
      translate(json, TeamListMembersInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(TeamListMembersInput object) =>
      untranslate(object.toJson());
}
