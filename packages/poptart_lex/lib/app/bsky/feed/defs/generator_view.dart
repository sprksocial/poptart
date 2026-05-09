// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view.dart';
import '../../richtext/facet/main.dart';
import '../../../../com/atproto/label/defs/label.dart';
import './generator_viewer_state.dart';
import './generator_view_content_mode.dart';

part 'generator_view.freezed.dart';
part 'generator_view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GeneratorView with _$GeneratorView {
  static const knownProps = <String>[
    'uri',
    'cid',
    'did',
    'creator',
    'displayName',
    'description',
    'descriptionFacets',
    'avatar',
    'likeCount',
    'acceptsInteractions',
    'labels',
    'viewer',
    'contentMode',
    'indexedAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory GeneratorView({
    @Default('app.bsky.feed.defs#generatorView') String $type,
    @AtUriConverter() required AtUri uri,
    required String cid,
    required String did,
    @ProfileViewConverter() required ProfileView creator,
    required String displayName,
    String? description,
    @RichtextFacetConverter() List<RichtextFacet>? descriptionFacets,
    String? avatar,
    int? likeCount,
    bool? acceptsInteractions,
    @LabelConverter() List<Label>? labels,
    @GeneratorViewerStateConverter() GeneratorViewerState? viewer,
    @GeneratorViewContentModeConverter() GeneratorViewContentMode? contentMode,
    required DateTime indexedAt,

    Map<String, dynamic>? $unknown,
  }) = _GeneratorView;

  factory GeneratorView.fromJson(Map<String, Object?> json) =>
      _$GeneratorViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#generatorView';
  }
}

extension GeneratorViewExtension on GeneratorView {
  bool get hasDescription => description != null;
  bool get hasNotDescription => !hasDescription;
  bool get hasAvatar => avatar != null;
  bool get hasNotAvatar => !hasAvatar;
  bool get hasLikeCount => likeCount != null;
  bool get hasNotLikeCount => !hasLikeCount;
  bool get isAcceptsInteractions => acceptsInteractions ?? false;
  bool get isNotAcceptsInteractions => !isAcceptsInteractions;
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
  bool get hasContentMode => contentMode != null;
  bool get hasNotContentMode => !hasContentMode;
}

final class GeneratorViewConverter
    extends JsonConverter<GeneratorView, Map<String, dynamic>> {
  const GeneratorViewConverter();

  @override
  GeneratorView fromJson(Map<String, dynamic> json) {
    return GeneratorView.fromJson(translate(json, GeneratorView.knownProps));
  }

  @override
  Map<String, dynamic> toJson(GeneratorView object) =>
      untranslate(object.toJson());
}
