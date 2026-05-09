// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './union_event_details.dart';

part 'event.freezed.dart';
part 'event.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class Event with _$Event {
  static const knownProps = <String>['details', 'createdBy', 'createdAt'];

  @JsonSerializable(includeIfNull: false)
  const factory Event({
    @Default('tools.ozone.hosting.getAccountHistory#event') String $type,
    @UEventDetailsConverter() required UEventDetails details,
    required String createdBy,
    required DateTime createdAt,

    Map<String, dynamic>? $unknown,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.hosting.getAccountHistory#event';
  }
}

final class EventConverter extends JsonConverter<Event, Map<String, dynamic>> {
  const EventConverter();

  @override
  Event fromJson(Map<String, dynamic> json) {
    return Event.fromJson(translate(json, Event.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Event object) => untranslate(object.toJson());
}
