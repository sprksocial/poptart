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
abstract class DraftGetDraftsInput with _$DraftGetDraftsInput {
  static const knownProps = <String>['limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftGetDraftsInput({
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _DraftGetDraftsInput;

  factory DraftGetDraftsInput.fromJson(Map<String, Object?> json) =>
      _$DraftGetDraftsInputFromJson(json);
}

extension DraftGetDraftsInputExtension on DraftGetDraftsInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class DraftGetDraftsInputConverter
    extends JsonConverter<DraftGetDraftsInput, Map<String, dynamic>> {
  const DraftGetDraftsInputConverter();

  @override
  DraftGetDraftsInput fromJson(Map<String, dynamic> json) {
    return DraftGetDraftsInput.fromJson(
      translate(json, DraftGetDraftsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DraftGetDraftsInput object) =>
      untranslate(object.toJson());
}
