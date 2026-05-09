// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './union_main_relationships.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GraphGetRelationshipsOutput with _$GraphGetRelationshipsOutput {
  static const knownProps = <String>['actor', 'relationships'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetRelationshipsOutput({
    String? actor,
    @UGraphGetRelationshipsRelationshipsConverter()
    required List<UGraphGetRelationshipsRelationships> relationships,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetRelationshipsOutput;

  factory GraphGetRelationshipsOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetRelationshipsOutputFromJson(json);
}

extension GraphGetRelationshipsOutputExtension on GraphGetRelationshipsOutput {
  bool get hasActor => actor != null;
  bool get hasNotActor => !hasActor;
}

final class GraphGetRelationshipsOutputConverter
    extends JsonConverter<GraphGetRelationshipsOutput, Map<String, dynamic>> {
  const GraphGetRelationshipsOutputConverter();

  @override
  GraphGetRelationshipsOutput fromJson(Map<String, dynamic> json) {
    return GraphGetRelationshipsOutput.fromJson(
      translate(json, GraphGetRelationshipsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetRelationshipsOutput object) =>
      untranslate(object.toJson());
}
