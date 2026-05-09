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
abstract class GraphGetFollowersInput with _$GraphGetFollowersInput {
  static const knownProps = <String>['actor', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetFollowersInput({
    required String actor,
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetFollowersInput;

  factory GraphGetFollowersInput.fromJson(Map<String, Object?> json) =>
      _$GraphGetFollowersInputFromJson(json);
}

extension GraphGetFollowersInputExtension on GraphGetFollowersInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetFollowersInputConverter
    extends JsonConverter<GraphGetFollowersInput, Map<String, dynamic>> {
  const GraphGetFollowersInputConverter();

  @override
  GraphGetFollowersInput fromJson(Map<String, dynamic> json) {
    return GraphGetFollowersInput.fromJson(
      translate(json, GraphGetFollowersInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetFollowersInput object) =>
      untranslate(object.toJson());
}
