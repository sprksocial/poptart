// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/union_preferences.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ActorPutPreferencesInput with _$ActorPutPreferencesInput {
  static const knownProps = <String>['preferences'];

  @JsonSerializable(includeIfNull: false)
  const factory ActorPutPreferencesInput({
    @UPreferencesConverter() required List<UPreferences> preferences,

    Map<String, dynamic>? $unknown,
  }) = _ActorPutPreferencesInput;

  factory ActorPutPreferencesInput.fromJson(Map<String, Object?> json) =>
      _$ActorPutPreferencesInputFromJson(json);
}

final class ActorPutPreferencesInputConverter
    extends JsonConverter<ActorPutPreferencesInput, Map<String, dynamic>> {
  const ActorPutPreferencesInputConverter();

  @override
  ActorPutPreferencesInput fromJson(Map<String, dynamic> json) {
    return ActorPutPreferencesInput.fromJson(
      translate(json, ActorPutPreferencesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorPutPreferencesInput object) =>
      untranslate(object.toJson());
}
