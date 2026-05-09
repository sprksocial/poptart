// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/list_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GraphGetListBlocksOutput with _$GraphGetListBlocksOutput {
  static const knownProps = <String>['cursor', 'lists'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetListBlocksOutput({
    String? cursor,
    @ListViewConverter() required List<ListView> lists,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetListBlocksOutput;

  factory GraphGetListBlocksOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetListBlocksOutputFromJson(json);
}

extension GraphGetListBlocksOutputExtension on GraphGetListBlocksOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetListBlocksOutputConverter
    extends JsonConverter<GraphGetListBlocksOutput, Map<String, dynamic>> {
  const GraphGetListBlocksOutputConverter();

  @override
  GraphGetListBlocksOutput fromJson(Map<String, dynamic> json) {
    return GraphGetListBlocksOutput.fromJson(
      translate(json, GraphGetListBlocksOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetListBlocksOutput object) =>
      untranslate(object.toJson());
}
