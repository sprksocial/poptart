// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'scheduling_config.freezed.dart';
part 'scheduling_config.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Configuration for when the action should be executed
@freezed
abstract class SchedulingConfig with _$SchedulingConfig {
  static const knownProps = <String>[
    'executeAt',
    'executeAfter',
    'executeUntil',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory SchedulingConfig({
    @Default('tools.ozone.moderation.scheduleAction#schedulingConfig')
    String $type,

    /// Exact time to execute the action
    DateTime? executeAt,

    /// Earliest time to execute the action (for randomized scheduling)
    DateTime? executeAfter,

    /// Latest time to execute the action (for randomized scheduling)
    DateTime? executeUntil,

    Map<String, dynamic>? $unknown,
  }) = _SchedulingConfig;

  factory SchedulingConfig.fromJson(Map<String, Object?> json) =>
      _$SchedulingConfigFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.moderation.scheduleAction#schedulingConfig';
  }
}

extension SchedulingConfigExtension on SchedulingConfig {
  bool get hasExecuteAt => executeAt != null;
  bool get hasNotExecuteAt => !hasExecuteAt;
  bool get hasExecuteAfter => executeAfter != null;
  bool get hasNotExecuteAfter => !hasExecuteAfter;
  bool get hasExecuteUntil => executeUntil != null;
  bool get hasNotExecuteUntil => !hasExecuteUntil;
}

final class SchedulingConfigConverter
    extends JsonConverter<SchedulingConfig, Map<String, dynamic>> {
  const SchedulingConfigConverter();

  @override
  SchedulingConfig fromJson(Map<String, dynamic> json) {
    return SchedulingConfig.fromJson(
      translate(json, SchedulingConfig.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SchedulingConfig object) =>
      untranslate(object.toJson());
}
