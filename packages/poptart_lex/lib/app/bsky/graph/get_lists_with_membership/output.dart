// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './list_with_membership.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class GraphGetListsWithMembershipOutput
    with _$GraphGetListsWithMembershipOutput {
  static const knownProps = <String>['cursor', 'listsWithMembership'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetListsWithMembershipOutput({
    String? cursor,
    @ListWithMembershipConverter()
    required List<ListWithMembership> listsWithMembership,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetListsWithMembershipOutput;

  factory GraphGetListsWithMembershipOutput.fromJson(
    Map<String, Object?> json,
  ) => _$GraphGetListsWithMembershipOutputFromJson(json);
}

extension GraphGetListsWithMembershipOutputExtension
    on GraphGetListsWithMembershipOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetListsWithMembershipOutputConverter
    extends
        JsonConverter<GraphGetListsWithMembershipOutput, Map<String, dynamic>> {
  const GraphGetListsWithMembershipOutputConverter();

  @override
  GraphGetListsWithMembershipOutput fromJson(Map<String, dynamic> json) {
    return GraphGetListsWithMembershipOutput.fromJson(
      translate(json, GraphGetListsWithMembershipOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetListsWithMembershipOutput object) =>
      untranslate(object.toJson());
}
