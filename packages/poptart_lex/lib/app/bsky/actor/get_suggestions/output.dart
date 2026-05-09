// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ActorGetSuggestionsOutput with _$ActorGetSuggestionsOutput {
  static const knownProps = <String>['cursor', 'actors', 'recIdStr'];

  @JsonSerializable(includeIfNull: false)
  const factory ActorGetSuggestionsOutput({
    String? cursor,
    @ProfileViewConverter() required List<ProfileView> actors,

    /// Snowflake for this recommendation, use when submitting recommendation events.
    String? recIdStr,

    Map<String, dynamic>? $unknown,
  }) = _ActorGetSuggestionsOutput;

  factory ActorGetSuggestionsOutput.fromJson(Map<String, Object?> json) =>
      _$ActorGetSuggestionsOutputFromJson(json);
}

extension ActorGetSuggestionsOutputExtension on ActorGetSuggestionsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasRecIdStr => recIdStr != null;
  bool get hasNotRecIdStr => !hasRecIdStr;
}

final class ActorGetSuggestionsOutputConverter
    extends JsonConverter<ActorGetSuggestionsOutput, Map<String, dynamic>> {
  const ActorGetSuggestionsOutputConverter();

  @override
  ActorGetSuggestionsOutput fromJson(Map<String, dynamic> json) {
    return ActorGetSuggestionsOutput.fromJson(
      translate(json, ActorGetSuggestionsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorGetSuggestionsOutput object) =>
      untranslate(object.toJson());
}
