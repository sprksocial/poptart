// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/draft_with_id.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class DraftUpdateDraftInput with _$DraftUpdateDraftInput {
  static const knownProps = <String>['draft'];

  @JsonSerializable(includeIfNull: false)
  const factory DraftUpdateDraftInput({
    @DraftWithIdConverter() required DraftWithId draft,

    Map<String, dynamic>? $unknown,
  }) = _DraftUpdateDraftInput;

  factory DraftUpdateDraftInput.fromJson(Map<String, Object?> json) =>
      _$DraftUpdateDraftInputFromJson(json);
}

final class DraftUpdateDraftInputConverter
    extends JsonConverter<DraftUpdateDraftInput, Map<String, dynamic>> {
  const DraftUpdateDraftInputConverter();

  @override
  DraftUpdateDraftInput fromJson(Map<String, dynamic> json) {
    return DraftUpdateDraftInput.fromJson(
      translate(json, DraftUpdateDraftInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(DraftUpdateDraftInput object) =>
      untranslate(object.toJson());
}
