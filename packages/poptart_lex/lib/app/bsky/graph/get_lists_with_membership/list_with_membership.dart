// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/list_view.dart';
import '../defs/list_item_view.dart';

part 'list_with_membership.freezed.dart';
part 'list_with_membership.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A list and an optional list item indicating membership of a target user to that list.
@freezed
abstract class ListWithMembership with _$ListWithMembership {
  static const knownProps = <String>['list', 'listItem'];

  @JsonSerializable(includeIfNull: false)
  const factory ListWithMembership({
    @Default('app.bsky.graph.getListsWithMembership#listWithMembership')
    String $type,
    @ListViewConverter() required ListView list,
    @ListItemViewConverter() ListItemView? listItem,

    Map<String, dynamic>? $unknown,
  }) = _ListWithMembership;

  factory ListWithMembership.fromJson(Map<String, Object?> json) =>
      _$ListWithMembershipFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.graph.getListsWithMembership#listWithMembership';
  }
}

extension ListWithMembershipExtension on ListWithMembership {
  bool get hasListItem => listItem != null;
  bool get hasNotListItem => !hasListItem;
}

final class ListWithMembershipConverter
    extends JsonConverter<ListWithMembership, Map<String, dynamic>> {
  const ListWithMembershipConverter();

  @override
  ListWithMembership fromJson(Map<String, dynamic> json) {
    return ListWithMembership.fromJson(
      translate(json, ListWithMembership.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ListWithMembership object) =>
      untranslate(object.toJson());
}
