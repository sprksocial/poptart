// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class UnspeccedGetSuggestedUsersOutput
    with _$UnspeccedGetSuggestedUsersOutput {
  static const knownProps = <String>['actors', 'recIdStr'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetSuggestedUsersOutput({
    @ProfileViewConverter() required List<ProfileView> actors,

    /// Snowflake for this recommendation, use when submitting recommendation events.
    String? recIdStr,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetSuggestedUsersOutput;

  factory UnspeccedGetSuggestedUsersOutput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetSuggestedUsersOutputFromJson(json);
}

extension UnspeccedGetSuggestedUsersOutputExtension
    on UnspeccedGetSuggestedUsersOutput {
  bool get hasRecIdStr => recIdStr != null;
  bool get hasNotRecIdStr => !hasRecIdStr;
}

final class UnspeccedGetSuggestedUsersOutputConverter
    extends
        JsonConverter<UnspeccedGetSuggestedUsersOutput, Map<String, dynamic>> {
  const UnspeccedGetSuggestedUsersOutputConverter();

  @override
  UnspeccedGetSuggestedUsersOutput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetSuggestedUsersOutput.fromJson(
      translate(json, UnspeccedGetSuggestedUsersOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetSuggestedUsersOutput object) =>
      untranslate(object.toJson());
}
