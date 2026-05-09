// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/activity_subscription.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class NotificationPutActivitySubscriptionOutput
    with _$NotificationPutActivitySubscriptionOutput {
  static const knownProps = <String>['subject', 'activitySubscription'];

  @JsonSerializable(includeIfNull: false)
  const factory NotificationPutActivitySubscriptionOutput({
    required String subject,
    @ActivitySubscriptionConverter() ActivitySubscription? activitySubscription,

    Map<String, dynamic>? $unknown,
  }) = _NotificationPutActivitySubscriptionOutput;

  factory NotificationPutActivitySubscriptionOutput.fromJson(
    Map<String, Object?> json,
  ) => _$NotificationPutActivitySubscriptionOutputFromJson(json);
}

extension NotificationPutActivitySubscriptionOutputExtension
    on NotificationPutActivitySubscriptionOutput {
  bool get hasActivitySubscription => activitySubscription != null;
  bool get hasNotActivitySubscription => !hasActivitySubscription;
}

final class NotificationPutActivitySubscriptionOutputConverter
    extends
        JsonConverter<
          NotificationPutActivitySubscriptionOutput,
          Map<String, dynamic>
        > {
  const NotificationPutActivitySubscriptionOutputConverter();

  @override
  NotificationPutActivitySubscriptionOutput fromJson(
    Map<String, dynamic> json,
  ) {
    return NotificationPutActivitySubscriptionOutput.fromJson(
      translate(json, NotificationPutActivitySubscriptionOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(
    NotificationPutActivitySubscriptionOutput object,
  ) => untranslate(object.toJson());
}
