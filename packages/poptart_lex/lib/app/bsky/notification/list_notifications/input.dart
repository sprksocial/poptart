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
abstract class NotificationListNotificationsInput
    with _$NotificationListNotificationsInput {
  static const knownProps = <String>[
    'reasons',
    'limit',
    'priority',
    'cursor',
    'seenAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory NotificationListNotificationsInput({
    /// A reason that matches the reason property of #notification.
    List<String>? reasons,
    @Default(50) int limit,
    bool? priority,
    String? cursor,
    DateTime? seenAt,

    Map<String, dynamic>? $unknown,
  }) = _NotificationListNotificationsInput;

  factory NotificationListNotificationsInput.fromJson(
    Map<String, Object?> json,
  ) => _$NotificationListNotificationsInputFromJson(json);
}

extension NotificationListNotificationsInputExtension
    on NotificationListNotificationsInput {
  bool get isPriority => priority ?? false;
  bool get isNotPriority => !isPriority;
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasSeenAt => seenAt != null;
  bool get hasNotSeenAt => !hasSeenAt;
}

final class NotificationListNotificationsInputConverter
    extends
        JsonConverter<
          NotificationListNotificationsInput,
          Map<String, dynamic>
        > {
  const NotificationListNotificationsInputConverter();

  @override
  NotificationListNotificationsInput fromJson(Map<String, dynamic> json) {
    return NotificationListNotificationsInput.fromJson(
      translate(json, NotificationListNotificationsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(NotificationListNotificationsInput object) =>
      untranslate(object.toJson());
}
