// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view_basic.dart';
import './list_view_basic.dart';
import './list_item_view.dart';
import '../../feed/defs/generator_view.dart';
import '../../../../com/atproto/label/defs/label.dart';

part 'starter_pack_view.freezed.dart';
part 'starter_pack_view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class StarterPackView with _$StarterPackView {
  static const knownProps = <String>[
    'uri',
    'cid',
    'record',
    'creator',
    'list',
    'listItemsSample',
    'feeds',
    'joinedWeekCount',
    'joinedAllTimeCount',
    'labels',
    'indexedAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory StarterPackView({
    @Default('app.bsky.graph.defs#starterPackView') String $type,
    @AtUriConverter() required AtUri uri,
    required String cid,
    required Map<String, dynamic> record,
    @ProfileViewBasicConverter() required ProfileViewBasic creator,
    @ListViewBasicConverter() ListViewBasic? list,
    @ListItemViewConverter() List<ListItemView>? listItemsSample,
    @GeneratorViewConverter() List<GeneratorView>? feeds,
    int? joinedWeekCount,
    int? joinedAllTimeCount,
    @LabelConverter() List<Label>? labels,
    required DateTime indexedAt,

    Map<String, dynamic>? $unknown,
  }) = _StarterPackView;

  factory StarterPackView.fromJson(Map<String, Object?> json) =>
      _$StarterPackViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.graph.defs#starterPackView';
  }
}

extension StarterPackViewExtension on StarterPackView {
  bool get hasList => list != null;
  bool get hasNotList => !hasList;
  bool get hasJoinedWeekCount => joinedWeekCount != null;
  bool get hasNotJoinedWeekCount => !hasJoinedWeekCount;
  bool get hasJoinedAllTimeCount => joinedAllTimeCount != null;
  bool get hasNotJoinedAllTimeCount => !hasJoinedAllTimeCount;
}

final class StarterPackViewConverter
    extends JsonConverter<StarterPackView, Map<String, dynamic>> {
  const StarterPackViewConverter();

  @override
  StarterPackView fromJson(Map<String, dynamic> json) {
    return StarterPackView.fromJson(
      translate(json, StarterPackView.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(StarterPackView object) =>
      untranslate(object.toJson());
}
