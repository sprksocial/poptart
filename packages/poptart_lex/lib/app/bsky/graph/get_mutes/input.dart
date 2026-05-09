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
abstract class GraphGetMutesInput with _$GraphGetMutesInput {
  static const knownProps = <String>['limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetMutesInput({
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetMutesInput;

  factory GraphGetMutesInput.fromJson(Map<String, Object?> json) =>
      _$GraphGetMutesInputFromJson(json);
}

extension GraphGetMutesInputExtension on GraphGetMutesInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetMutesInputConverter
    extends JsonConverter<GraphGetMutesInput, Map<String, dynamic>> {
  const GraphGetMutesInputConverter();

  @override
  GraphGetMutesInput fromJson(Map<String, dynamic> json) {
    return GraphGetMutesInput.fromJson(
      translate(json, GraphGetMutesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetMutesInput object) =>
      untranslate(object.toJson());
}
