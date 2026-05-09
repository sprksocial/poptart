// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/scheduled_action_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ModerationListScheduledActionsOutput
    with _$ModerationListScheduledActionsOutput {
  static const knownProps = <String>['actions', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory ModerationListScheduledActionsOutput({
    @ScheduledActionViewConverter() required List<ScheduledActionView> actions,

    /// Cursor for next page of results
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _ModerationListScheduledActionsOutput;

  factory ModerationListScheduledActionsOutput.fromJson(
    Map<String, Object?> json,
  ) => _$ModerationListScheduledActionsOutputFromJson(json);
}

extension ModerationListScheduledActionsOutputExtension
    on ModerationListScheduledActionsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class ModerationListScheduledActionsOutputConverter
    extends
        JsonConverter<
          ModerationListScheduledActionsOutput,
          Map<String, dynamic>
        > {
  const ModerationListScheduledActionsOutputConverter();

  @override
  ModerationListScheduledActionsOutput fromJson(Map<String, dynamic> json) {
    return ModerationListScheduledActionsOutput.fromJson(
      translate(json, ModerationListScheduledActionsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ModerationListScheduledActionsOutput object) =>
      untranslate(object.toJson());
}
