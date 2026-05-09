// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/event.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SafelinkQueryEventsOutput with _$SafelinkQueryEventsOutput {
  static const knownProps = <String>['cursor', 'events'];

  @JsonSerializable(includeIfNull: false)
  const factory SafelinkQueryEventsOutput({
    /// Next cursor for pagination. Only present if there are more results.
    String? cursor,
    @EventConverter() required List<Event> events,

    Map<String, dynamic>? $unknown,
  }) = _SafelinkQueryEventsOutput;

  factory SafelinkQueryEventsOutput.fromJson(Map<String, Object?> json) =>
      _$SafelinkQueryEventsOutputFromJson(json);
}

extension SafelinkQueryEventsOutputExtension on SafelinkQueryEventsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SafelinkQueryEventsOutputConverter
    extends JsonConverter<SafelinkQueryEventsOutput, Map<String, dynamic>> {
  const SafelinkQueryEventsOutputConverter();

  @override
  SafelinkQueryEventsOutput fromJson(Map<String, dynamic> json) {
    return SafelinkQueryEventsOutput.fromJson(
      translate(json, SafelinkQueryEventsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SafelinkQueryEventsOutput object) =>
      untranslate(object.toJson());
}
