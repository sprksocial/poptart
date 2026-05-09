// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/profile_view_basic.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ActorSearchActorsTypeaheadOutput
    with _$ActorSearchActorsTypeaheadOutput {
  static const knownProps = <String>['actors'];

  @JsonSerializable(includeIfNull: false)
  const factory ActorSearchActorsTypeaheadOutput({
    @ProfileViewBasicConverter() required List<ProfileViewBasic> actors,

    Map<String, dynamic>? $unknown,
  }) = _ActorSearchActorsTypeaheadOutput;

  factory ActorSearchActorsTypeaheadOutput.fromJson(
    Map<String, Object?> json,
  ) => _$ActorSearchActorsTypeaheadOutputFromJson(json);
}

final class ActorSearchActorsTypeaheadOutputConverter
    extends
        JsonConverter<ActorSearchActorsTypeaheadOutput, Map<String, dynamic>> {
  const ActorSearchActorsTypeaheadOutputConverter();

  @override
  ActorSearchActorsTypeaheadOutput fromJson(Map<String, dynamic> json) {
    return ActorSearchActorsTypeaheadOutput.fromJson(
      translate(json, ActorSearchActorsTypeaheadOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorSearchActorsTypeaheadOutput object) =>
      untranslate(object.toJson());
}
