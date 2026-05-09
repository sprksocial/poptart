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
abstract class GraphGetMutesOutput with _$GraphGetMutesOutput {
  static const knownProps = <String>['cursor', 'mutes'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetMutesOutput({
    String? cursor,
    @ProfileViewConverter() required List<ProfileView> mutes,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetMutesOutput;

  factory GraphGetMutesOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetMutesOutputFromJson(json);
}

extension GraphGetMutesOutputExtension on GraphGetMutesOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetMutesOutputConverter
    extends JsonConverter<GraphGetMutesOutput, Map<String, dynamic>> {
  const GraphGetMutesOutputConverter();

  @override
  GraphGetMutesOutput fromJson(Map<String, dynamic> json) {
    return GraphGetMutesOutput.fromJson(
      translate(json, GraphGetMutesOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetMutesOutput object) =>
      untranslate(object.toJson());
}
