// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'failed_scheduling.freezed.dart';
part 'failed_scheduling.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FailedScheduling with _$FailedScheduling {
  static const knownProps = <String>['subject', 'error', 'errorCode'];

  @JsonSerializable(includeIfNull: false)
  const factory FailedScheduling({
    @Default('tools.ozone.moderation.scheduleAction#failedScheduling')
    String $type,
    required String subject,
    required String error,
    String? errorCode,

    Map<String, dynamic>? $unknown,
  }) = _FailedScheduling;

  factory FailedScheduling.fromJson(Map<String, Object?> json) =>
      _$FailedSchedulingFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.moderation.scheduleAction#failedScheduling';
  }
}

extension FailedSchedulingExtension on FailedScheduling {
  bool get hasErrorCode => errorCode != null;
  bool get hasNotErrorCode => !hasErrorCode;
}

final class FailedSchedulingConverter
    extends JsonConverter<FailedScheduling, Map<String, dynamic>> {
  const FailedSchedulingConverter();

  @override
  FailedScheduling fromJson(Map<String, dynamic> json) {
    return FailedScheduling.fromJson(
      translate(json, FailedScheduling.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FailedScheduling object) =>
      untranslate(object.toJson());
}
