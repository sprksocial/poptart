// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A stash object to be sent via bsync representing a notification to be created.
@freezed
abstract class Notification with _$Notification {
  static const knownProps = <String>['from', 'to'];

  @JsonSerializable(includeIfNull: false)
  const factory Notification({
    @Default('app.bsky.contact.defs#notification') String $type,

    /// The DID of who this notification comes from.
    required String from,

    /// The DID of who this notification should go to.
    required String to,

    Map<String, dynamic>? $unknown,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.contact.defs#notification';
  }
}

final class NotificationConverter
    extends JsonConverter<Notification, Map<String, dynamic>> {
  const NotificationConverter();

  @override
  Notification fromJson(Map<String, dynamic> json) {
    return Notification.fromJson(translate(json, Notification.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Notification object) =>
      untranslate(object.toJson());
}
