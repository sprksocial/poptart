// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'set.freezed.dart';
part 'set.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class Set with _$Set {
  static const knownProps = <String>['name', 'description'];

  @JsonSerializable(includeIfNull: false)
  const factory Set({
    @Default('tools.ozone.set.defs#set') String $type,
    required String name,
    String? description,

    Map<String, dynamic>? $unknown,
  }) = _Set;

  factory Set.fromJson(Map<String, Object?> json) => _$SetFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.set.defs#set';
  }
}

extension SetExtension on Set {
  bool get hasDescription => description != null;
  bool get hasNotDescription => !hasDescription;
}

final class SetConverter extends JsonConverter<Set, Map<String, dynamic>> {
  const SetConverter();

  @override
  Set fromJson(Map<String, dynamic> json) {
    return Set.fromJson(translate(json, Set.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Set object) => untranslate(object.toJson());
}
