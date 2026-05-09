// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './main_allow_subscriptions.dart';

part 'main.freezed.dart';
part 'main.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A declaration of the user's choices related to notifications that can be produced by them.
@freezed
abstract class NotificationDeclarationRecord
    with _$NotificationDeclarationRecord {
  static const knownProps = <String>['allowSubscriptions'];

  @JsonSerializable(includeIfNull: false)
  const factory NotificationDeclarationRecord({
    @Default('app.bsky.notification.declaration') String $type,

    /// A declaration of the user's preference for allowing activity subscriptions from other users. Absence of a record implies 'followers'.
    @NotificationDeclarationAllowSubscriptionsConverter()
    required NotificationDeclarationAllowSubscriptions allowSubscriptions,

    Map<String, dynamic>? $unknown,
  }) = _NotificationDeclarationRecord;

  factory NotificationDeclarationRecord.fromJson(Map<String, Object?> json) =>
      _$NotificationDeclarationRecordFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.notification.declaration';
  }
}

final class NotificationDeclarationRecordConverter
    extends JsonConverter<NotificationDeclarationRecord, Map<String, dynamic>> {
  const NotificationDeclarationRecordConverter();

  @override
  NotificationDeclarationRecord fromJson(Map<String, dynamic> json) {
    return NotificationDeclarationRecord.fromJson(
      translate(json, NotificationDeclarationRecord.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(NotificationDeclarationRecord object) =>
      untranslate(object.toJson());
}
