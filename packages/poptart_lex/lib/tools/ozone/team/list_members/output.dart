// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/member.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class TeamListMembersOutput with _$TeamListMembersOutput {
  static const knownProps = <String>['cursor', 'members'];

  @JsonSerializable(includeIfNull: false)
  const factory TeamListMembersOutput({
    String? cursor,
    @MemberConverter() required List<Member> members,

    Map<String, dynamic>? $unknown,
  }) = _TeamListMembersOutput;

  factory TeamListMembersOutput.fromJson(Map<String, Object?> json) =>
      _$TeamListMembersOutputFromJson(json);
}

extension TeamListMembersOutputExtension on TeamListMembersOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class TeamListMembersOutputConverter
    extends JsonConverter<TeamListMembersOutput, Map<String, dynamic>> {
  const TeamListMembersOutputConverter();

  @override
  TeamListMembersOutput fromJson(Map<String, dynamic> json) {
    return TeamListMembersOutput.fromJson(
      translate(json, TeamListMembersOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(TeamListMembersOutput object) =>
      untranslate(object.toJson());
}
