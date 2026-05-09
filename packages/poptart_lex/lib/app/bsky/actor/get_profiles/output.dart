// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/profile_view_detailed.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ActorGetProfilesOutput with _$ActorGetProfilesOutput {
  static const knownProps = <String>['profiles'];

  @JsonSerializable(includeIfNull: false)
  const factory ActorGetProfilesOutput({
    @ProfileViewDetailedConverter() required List<ProfileViewDetailed> profiles,

    Map<String, dynamic>? $unknown,
  }) = _ActorGetProfilesOutput;

  factory ActorGetProfilesOutput.fromJson(Map<String, Object?> json) =>
      _$ActorGetProfilesOutputFromJson(json);
}

final class ActorGetProfilesOutputConverter
    extends JsonConverter<ActorGetProfilesOutput, Map<String, dynamic>> {
  const ActorGetProfilesOutputConverter();

  @override
  ActorGetProfilesOutput fromJson(Map<String, dynamic> json) {
    return ActorGetProfilesOutput.fromJson(
      translate(json, ActorGetProfilesOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorGetProfilesOutput object) =>
      untranslate(object.toJson());
}
