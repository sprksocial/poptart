// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './main_sort_direction.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SafelinkQueryEventsInput with _$SafelinkQueryEventsInput {
  static const knownProps = <String>[
    'cursor',
    'limit',
    'urls',
    'patternType',
    'sortDirection',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory SafelinkQueryEventsInput({
    /// Cursor for pagination
    String? cursor,

    /// Maximum number of results to return
    @Default(50) int limit,
    List<String>? urls,

    /// Filter by pattern type
    String? patternType,

    /// Sort direction
    @SafelinkQueryEventsSortDirectionConverter()
    SafelinkQueryEventsSortDirection? sortDirection,

    Map<String, dynamic>? $unknown,
  }) = _SafelinkQueryEventsInput;

  factory SafelinkQueryEventsInput.fromJson(Map<String, Object?> json) =>
      _$SafelinkQueryEventsInputFromJson(json);
}

extension SafelinkQueryEventsInputExtension on SafelinkQueryEventsInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasPatternType => patternType != null;
  bool get hasNotPatternType => !hasPatternType;
  bool get hasSortDirection => sortDirection != null;
  bool get hasNotSortDirection => !hasSortDirection;
}

final class SafelinkQueryEventsInputConverter
    extends JsonConverter<SafelinkQueryEventsInput, Map<String, dynamic>> {
  const SafelinkQueryEventsInputConverter();

  @override
  SafelinkQueryEventsInput fromJson(Map<String, dynamic> json) {
    return SafelinkQueryEventsInput.fromJson(
      translate(json, SafelinkQueryEventsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SafelinkQueryEventsInput object) =>
      untranslate(object.toJson());
}
