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
abstract class ModerationCancelScheduledActionsInput
    with _$ModerationCancelScheduledActionsInput {
  static const knownProps = <String>['subjects', 'comment'];

  @JsonSerializable(includeIfNull: false)
  const factory ModerationCancelScheduledActionsInput({
    required List<String> subjects,

    /// Optional comment describing the reason for cancellation
    String? comment,

    Map<String, dynamic>? $unknown,
  }) = _ModerationCancelScheduledActionsInput;

  factory ModerationCancelScheduledActionsInput.fromJson(
    Map<String, Object?> json,
  ) => _$ModerationCancelScheduledActionsInputFromJson(json);
}

extension ModerationCancelScheduledActionsInputExtension
    on ModerationCancelScheduledActionsInput {
  bool get hasComment => comment != null;
  bool get hasNotComment => !hasComment;
}

final class ModerationCancelScheduledActionsInputConverter
    extends
        JsonConverter<
          ModerationCancelScheduledActionsInput,
          Map<String, dynamic>
        > {
  const ModerationCancelScheduledActionsInputConverter();

  @override
  ModerationCancelScheduledActionsInput fromJson(Map<String, dynamic> json) {
    return ModerationCancelScheduledActionsInput.fromJson(
      translate(json, ModerationCancelScheduledActionsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ModerationCancelScheduledActionsInput object) =>
      untranslate(object.toJson());
}
