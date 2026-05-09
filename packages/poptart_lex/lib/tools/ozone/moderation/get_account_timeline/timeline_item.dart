// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './timeline_item_summary.dart';

part 'timeline_item.freezed.dart';
part 'timeline_item.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class TimelineItem with _$TimelineItem {
  static const knownProps = <String>['day', 'summary'];

  @JsonSerializable(includeIfNull: false)
  const factory TimelineItem({
    @Default('tools.ozone.moderation.getAccountTimeline#timelineItem')
    String $type,
    required String day,
    @TimelineItemSummaryConverter() required List<TimelineItemSummary> summary,

    Map<String, dynamic>? $unknown,
  }) = _TimelineItem;

  factory TimelineItem.fromJson(Map<String, Object?> json) =>
      _$TimelineItemFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'tools.ozone.moderation.getAccountTimeline#timelineItem';
  }
}

final class TimelineItemConverter
    extends JsonConverter<TimelineItem, Map<String, dynamic>> {
  const TimelineItemConverter();

  @override
  TimelineItem fromJson(Map<String, dynamic> json) {
    return TimelineItem.fromJson(translate(json, TimelineItem.knownProps));
  }

  @override
  Map<String, dynamic> toJson(TimelineItem object) =>
      untranslate(object.toJson());
}
