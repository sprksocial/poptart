// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'list_viewer_state.freezed.dart';
part 'list_viewer_state.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ListViewerState with _$ListViewerState {
  static const knownProps = <String>['muted', 'blocked'];

  @JsonSerializable(includeIfNull: false)
  const factory ListViewerState({
    @Default('app.bsky.graph.defs#listViewerState') String $type,
    bool? muted,
    @AtUriConverter() AtUri? blocked,

    Map<String, dynamic>? $unknown,
  }) = _ListViewerState;

  factory ListViewerState.fromJson(Map<String, Object?> json) =>
      _$ListViewerStateFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.graph.defs#listViewerState';
  }
}

extension ListViewerStateExtension on ListViewerState {
  bool get isMuted => muted ?? false;
  bool get isNotMuted => !isMuted;
  bool get hasBlocked => blocked != null;
  bool get hasNotBlocked => !hasBlocked;
}

final class ListViewerStateConverter
    extends JsonConverter<ListViewerState, Map<String, dynamic>> {
  const ListViewerStateConverter();

  @override
  ListViewerState fromJson(Map<String, dynamic> json) {
    return ListViewerState.fromJson(
      translate(json, ListViewerState.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ListViewerState object) =>
      untranslate(object.toJson());
}
