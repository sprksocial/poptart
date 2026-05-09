// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/profile_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ActorSearchActorsOutput with _$ActorSearchActorsOutput {
  static const knownProps = <String>['cursor', 'actors'];

  @JsonSerializable(includeIfNull: false)
  const factory ActorSearchActorsOutput({
    String? cursor,
    @ProfileViewConverter() required List<ProfileView> actors,

    Map<String, dynamic>? $unknown,
  }) = _ActorSearchActorsOutput;

  factory ActorSearchActorsOutput.fromJson(Map<String, Object?> json) =>
      _$ActorSearchActorsOutputFromJson(json);
}

extension ActorSearchActorsOutputExtension on ActorSearchActorsOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class ActorSearchActorsOutputConverter
    extends JsonConverter<ActorSearchActorsOutput, Map<String, dynamic>> {
  const ActorSearchActorsOutputConverter();

  @override
  ActorSearchActorsOutput fromJson(Map<String, dynamic> json) {
    return ActorSearchActorsOutput.fromJson(
      translate(json, ActorSearchActorsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorSearchActorsOutput object) =>
      untranslate(object.toJson());
}
