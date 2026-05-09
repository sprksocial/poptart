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
abstract class GraphGetActorStarterPacksOutput
    with _$GraphGetActorStarterPacksOutput {
  static const knownProps = <String>['cursor', 'starterPacks'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetActorStarterPacksOutput({
    String? cursor,
    @StarterPackViewBasicConverter()
    required List<StarterPackViewBasic> starterPacks,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetActorStarterPacksOutput;

  factory GraphGetActorStarterPacksOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetActorStarterPacksOutputFromJson(json);
}

extension GraphGetActorStarterPacksOutputExtension
    on GraphGetActorStarterPacksOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetActorStarterPacksOutputConverter
    extends
        JsonConverter<GraphGetActorStarterPacksOutput, Map<String, dynamic>> {
  const GraphGetActorStarterPacksOutputConverter();

  @override
  GraphGetActorStarterPacksOutput fromJson(Map<String, dynamic> json) {
    return GraphGetActorStarterPacksOutput.fromJson(
      translate(json, GraphGetActorStarterPacksOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetActorStarterPacksOutput object) =>
      untranslate(object.toJson());
}
