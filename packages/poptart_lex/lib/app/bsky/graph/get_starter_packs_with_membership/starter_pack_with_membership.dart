// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/starter_pack_view.dart';
import '../defs/list_item_view.dart';

part 'starter_pack_with_membership.freezed.dart';
part 'starter_pack_with_membership.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A starter pack and an optional list item indicating membership of a target user to that starter pack.
@freezed
abstract class StarterPackWithMembership with _$StarterPackWithMembership {
  static const knownProps = <String>['starterPack', 'listItem'];

  @JsonSerializable(includeIfNull: false)
  const factory StarterPackWithMembership({
    @Default(
      'app.bsky.graph.getStarterPacksWithMembership#starterPackWithMembership',
    )
    String $type,
    @StarterPackViewConverter() required StarterPackView starterPack,
    @ListItemViewConverter() ListItemView? listItem,

    Map<String, dynamic>? $unknown,
  }) = _StarterPackWithMembership;

  factory StarterPackWithMembership.fromJson(Map<String, Object?> json) =>
      _$StarterPackWithMembershipFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.graph.getStarterPacksWithMembership#starterPackWithMembership';
  }
}

extension StarterPackWithMembershipExtension on StarterPackWithMembership {
  bool get hasListItem => listItem != null;
  bool get hasNotListItem => !hasListItem;
}

final class StarterPackWithMembershipConverter
    extends JsonConverter<StarterPackWithMembership, Map<String, dynamic>> {
  const StarterPackWithMembershipConverter();

  @override
  StarterPackWithMembership fromJson(Map<String, dynamic> json) {
    return StarterPackWithMembership.fromJson(
      translate(json, StarterPackWithMembership.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(StarterPackWithMembership object) =>
      untranslate(object.toJson());
}
