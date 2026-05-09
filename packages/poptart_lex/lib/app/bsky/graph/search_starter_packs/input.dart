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
abstract class GraphSearchStarterPacksInput
    with _$GraphSearchStarterPacksInput {
  static const knownProps = <String>['q', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphSearchStarterPacksInput({
    /// Search query string. Syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended.
    required String q,
    @Default(25) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _GraphSearchStarterPacksInput;

  factory GraphSearchStarterPacksInput.fromJson(Map<String, Object?> json) =>
      _$GraphSearchStarterPacksInputFromJson(json);
}

extension GraphSearchStarterPacksInputExtension
    on GraphSearchStarterPacksInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphSearchStarterPacksInputConverter
    extends JsonConverter<GraphSearchStarterPacksInput, Map<String, dynamic>> {
  const GraphSearchStarterPacksInputConverter();

  @override
  GraphSearchStarterPacksInput fromJson(Map<String, dynamic> json) {
    return GraphSearchStarterPacksInput.fromJson(
      translate(json, GraphSearchStarterPacksInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphSearchStarterPacksInput object) =>
      untranslate(object.toJson());
}
