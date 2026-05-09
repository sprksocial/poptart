// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'generator_viewer_state.freezed.dart';
part 'generator_viewer_state.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GeneratorViewerState with _$GeneratorViewerState {
  static const knownProps = <String>['like'];

  @JsonSerializable(includeIfNull: false)
  const factory GeneratorViewerState({
    @Default('app.bsky.feed.defs#generatorViewerState') String $type,
    @AtUriConverter() AtUri? like,

    Map<String, dynamic>? $unknown,
  }) = _GeneratorViewerState;

  factory GeneratorViewerState.fromJson(Map<String, Object?> json) =>
      _$GeneratorViewerStateFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#generatorViewerState';
  }
}

extension GeneratorViewerStateExtension on GeneratorViewerState {
  bool get hasLike => like != null;
  bool get hasNotLike => !hasLike;
}

final class GeneratorViewerStateConverter
    extends JsonConverter<GeneratorViewerState, Map<String, dynamic>> {
  const GeneratorViewerStateConverter();

  @override
  GeneratorViewerState fromJson(Map<String, dynamic> json) {
    return GeneratorViewerState.fromJson(
      translate(json, GeneratorViewerState.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GeneratorViewerState object) =>
      untranslate(object.toJson());
}
