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
abstract class GraphGetListInput with _$GraphGetListInput {
  static const knownProps = <String>['list', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetListInput({
    /// Reference (AT-URI) of the list record to hydrate.
    @AtUriConverter() required AtUri list,
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetListInput;

  factory GraphGetListInput.fromJson(Map<String, Object?> json) =>
      _$GraphGetListInputFromJson(json);
}

extension GraphGetListInputExtension on GraphGetListInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetListInputConverter
    extends JsonConverter<GraphGetListInput, Map<String, dynamic>> {
  const GraphGetListInputConverter();

  @override
  GraphGetListInput fromJson(Map<String, dynamic> json) {
    return GraphGetListInput.fromJson(
      translate(json, GraphGetListInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetListInput object) =>
      untranslate(object.toJson());
}
