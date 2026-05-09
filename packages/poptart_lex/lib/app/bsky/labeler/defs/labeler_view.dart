// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view.dart';
import './labeler_viewer_state.dart';
import '../../../../com/atproto/label/defs/label.dart';

part 'labeler_view.freezed.dart';
part 'labeler_view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class LabelerView with _$LabelerView {
  static const knownProps = <String>[
    'uri',
    'cid',
    'creator',
    'likeCount',
    'viewer',
    'indexedAt',
    'labels',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory LabelerView({
    @Default('app.bsky.labeler.defs#labelerView') String $type,
    @AtUriConverter() required AtUri uri,
    required String cid,
    @ProfileViewConverter() required ProfileView creator,
    int? likeCount,
    @LabelerViewerStateConverter() LabelerViewerState? viewer,
    required DateTime indexedAt,
    @LabelConverter() List<Label>? labels,

    Map<String, dynamic>? $unknown,
  }) = _LabelerView;

  factory LabelerView.fromJson(Map<String, Object?> json) =>
      _$LabelerViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.labeler.defs#labelerView';
  }
}

extension LabelerViewExtension on LabelerView {
  bool get hasLikeCount => likeCount != null;
  bool get hasNotLikeCount => !hasLikeCount;
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
}

final class LabelerViewConverter
    extends JsonConverter<LabelerView, Map<String, dynamic>> {
  const LabelerViewConverter();

  @override
  LabelerView fromJson(Map<String, dynamic> json) {
    return LabelerView.fromJson(translate(json, LabelerView.knownProps));
  }

  @override
  Map<String, dynamic> toJson(LabelerView object) =>
      untranslate(object.toJson());
}
