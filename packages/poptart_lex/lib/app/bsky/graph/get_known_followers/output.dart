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
abstract class GraphGetKnownFollowersOutput
    with _$GraphGetKnownFollowersOutput {
  static const knownProps = <String>['subject', 'cursor', 'followers'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphGetKnownFollowersOutput({
    @ProfileViewConverter() required ProfileView subject,
    String? cursor,
    @ProfileViewConverter() required List<ProfileView> followers,

    Map<String, dynamic>? $unknown,
  }) = _GraphGetKnownFollowersOutput;

  factory GraphGetKnownFollowersOutput.fromJson(Map<String, Object?> json) =>
      _$GraphGetKnownFollowersOutputFromJson(json);
}

extension GraphGetKnownFollowersOutputExtension
    on GraphGetKnownFollowersOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class GraphGetKnownFollowersOutputConverter
    extends JsonConverter<GraphGetKnownFollowersOutput, Map<String, dynamic>> {
  const GraphGetKnownFollowersOutputConverter();

  @override
  GraphGetKnownFollowersOutput fromJson(Map<String, dynamic> json) {
    return GraphGetKnownFollowersOutput.fromJson(
      translate(json, GraphGetKnownFollowersOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphGetKnownFollowersOutput object) =>
      untranslate(object.toJson());
}
