// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view.dart';
import './labeler_policies.dart';
import './labeler_viewer_state.dart';
import '../../../../com/atproto/label/defs/label.dart';
import '../../../../com/atproto/moderation/defs/reason_type.dart';
import '../../../../com/atproto/moderation/defs/subject_type.dart';

part 'labeler_view_detailed.freezed.dart';
part 'labeler_view_detailed.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class LabelerViewDetailed with _$LabelerViewDetailed {
  static const knownProps = <String>[
    'uri',
    'cid',
    'creator',
    'policies',
    'likeCount',
    'viewer',
    'indexedAt',
    'labels',
    'reasonTypes',
    'subjectTypes',
    'subjectCollections',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory LabelerViewDetailed({
    @Default('app.bsky.labeler.defs#labelerViewDetailed') String $type,
    @AtUriConverter() required AtUri uri,
    required String cid,
    @ProfileViewConverter() required ProfileView creator,
    @LabelerPoliciesConverter() required LabelerPolicies policies,
    int? likeCount,
    @LabelerViewerStateConverter() LabelerViewerState? viewer,
    required DateTime indexedAt,
    @LabelConverter() List<Label>? labels,
    @ReasonTypeConverter() List<ReasonType>? reasonTypes,
    @SubjectTypeConverter() List<SubjectType>? subjectTypes,
    List<String>? subjectCollections,

    Map<String, dynamic>? $unknown,
  }) = _LabelerViewDetailed;

  factory LabelerViewDetailed.fromJson(Map<String, Object?> json) =>
      _$LabelerViewDetailedFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.labeler.defs#labelerViewDetailed';
  }
}

extension LabelerViewDetailedExtension on LabelerViewDetailed {
  bool get hasLikeCount => likeCount != null;
  bool get hasNotLikeCount => !hasLikeCount;
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
}

final class LabelerViewDetailedConverter
    extends JsonConverter<LabelerViewDetailed, Map<String, dynamic>> {
  const LabelerViewDetailedConverter();

  @override
  LabelerViewDetailed fromJson(Map<String, dynamic> json) {
    return LabelerViewDetailed.fromJson(
      translate(json, LabelerViewDetailed.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(LabelerViewDetailed object) =>
      untranslate(object.toJson());
}
