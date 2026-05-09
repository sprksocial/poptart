// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/preferences.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class NotificationGetPreferencesOutput
    with _$NotificationGetPreferencesOutput {
  static const knownProps = <String>['preferences'];

  @JsonSerializable(includeIfNull: false)
  const factory NotificationGetPreferencesOutput({
    @PreferencesConverter() required Preferences preferences,

    Map<String, dynamic>? $unknown,
  }) = _NotificationGetPreferencesOutput;

  factory NotificationGetPreferencesOutput.fromJson(
    Map<String, Object?> json,
  ) => _$NotificationGetPreferencesOutputFromJson(json);
}

final class NotificationGetPreferencesOutputConverter
    extends
        JsonConverter<NotificationGetPreferencesOutput, Map<String, dynamic>> {
  const NotificationGetPreferencesOutputConverter();

  @override
  NotificationGetPreferencesOutput fromJson(Map<String, dynamic> json) {
    return NotificationGetPreferencesOutput.fromJson(
      translate(json, NotificationGetPreferencesOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(NotificationGetPreferencesOutput object) =>
      untranslate(object.toJson());
}
