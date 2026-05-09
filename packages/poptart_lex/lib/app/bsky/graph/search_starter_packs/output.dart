// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/starter_pack_view_basic.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GraphSearchStarterPacksOutput
    with _$GraphSearchStarterPacksOutput {
  static const knownProps = <String>['cursor', 'starterPacks'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphSearchStarterPacksOutput({
    String? cursor,
    @StarterPackViewBasicConverter()
    required List<StarterPackViewBasic> starterPacks,

    Map<String, dynamic>? $unknown,
  }) = _GraphSearchStarterPacksOutput;

  factory GraphSearchStarterPacksOutput.fromJson(Map<String, Object?> json) =>
      _$GraphSearchStarterPacksOutputFromJson(json);
}

extension GraphSearchStarterPacksOutputExtension
    on GraphSearchStarterPacksOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphSearchStarterPacksOutputConverter
    extends JsonConverter<GraphSearchStarterPacksOutput, Map<String, dynamic>> {
  const GraphSearchStarterPacksOutputConverter();

  @override
  GraphSearchStarterPacksOutput fromJson(Map<String, dynamic> json) {
    return GraphSearchStarterPacksOutput.fromJson(
      translate(json, GraphSearchStarterPacksOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphSearchStarterPacksOutput object) =>
      untranslate(object.toJson());
}
