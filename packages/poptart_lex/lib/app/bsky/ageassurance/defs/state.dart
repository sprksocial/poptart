// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './status.dart';
import './access.dart';

part 'state.freezed.dart';
part 'state.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// The user's computed Age Assurance state.
@freezed
abstract class State with _$State {
  static const knownProps = <String>['lastInitiatedAt', 'status', 'access'];

  @JsonSerializable(includeIfNull: false)
  const factory State({
    @Default('app.bsky.ageassurance.defs#state') String $type,

    /// The timestamp when this state was last updated.
    DateTime? lastInitiatedAt,
    @StatusConverter() required Status status,
    @AccessConverter() required Access access,

    Map<String, dynamic>? $unknown,
  }) = _State;

  factory State.fromJson(Map<String, Object?> json) => _$StateFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.ageassurance.defs#state';
  }
}

extension StateExtension on State {
  bool get hasLastInitiatedAt => lastInitiatedAt != null;
  bool get hasNotLastInitiatedAt => !hasLastInitiatedAt;
}

final class StateConverter extends JsonConverter<State, Map<String, dynamic>> {
  const StateConverter();

  @override
  State fromJson(Map<String, dynamic> json) {
    return State.fromJson(translate(json, State.knownProps));
  }

  @override
  Map<String, dynamic> toJson(State object) => untranslate(object.toJson());
}
