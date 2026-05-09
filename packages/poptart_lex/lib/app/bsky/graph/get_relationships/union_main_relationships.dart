// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../defs/relationship.dart';
import '../defs/not_found_actor.dart';

part 'union_main_relationships.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UGraphGetRelationshipsRelationships
    with _$UGraphGetRelationshipsRelationships {
  const UGraphGetRelationshipsRelationships._();

  const factory UGraphGetRelationshipsRelationships.relationship({
    required Relationship data,
  }) = UGraphGetRelationshipsRelationshipsRelationship;
  const factory UGraphGetRelationshipsRelationships.notFoundActor({
    required NotFoundActor data,
  }) = UGraphGetRelationshipsRelationshipsNotFoundActor;

  const factory UGraphGetRelationshipsRelationships.unknown({
    required Map<String, dynamic> data,
  }) = UGraphGetRelationshipsRelationshipsUnknown;

  Map<String, dynamic> toJson() =>
      const UGraphGetRelationshipsRelationshipsConverter().toJson(this);
}

extension UGraphGetRelationshipsRelationshipsExtension
    on UGraphGetRelationshipsRelationships {
  bool get isRelationship =>
      isA<UGraphGetRelationshipsRelationshipsRelationship>(this);
  bool get isNotRelationship => !isRelationship;
  Relationship? get relationship =>
      isRelationship ? data as Relationship : null;
  bool get isNotFoundActor =>
      isA<UGraphGetRelationshipsRelationshipsNotFoundActor>(this);
  bool get isNotNotFoundActor => !isNotFoundActor;
  NotFoundActor? get notFoundActor =>
      isNotFoundActor ? data as NotFoundActor : null;
  bool get isUnknown => isA<UGraphGetRelationshipsRelationshipsUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UGraphGetRelationshipsRelationshipsConverter
    implements
        JsonConverter<
          UGraphGetRelationshipsRelationships,
          Map<String, dynamic>
        > {
  const UGraphGetRelationshipsRelationshipsConverter();

  @override
  UGraphGetRelationshipsRelationships fromJson(Map<String, dynamic> json) {
    try {
      if (Relationship.validate(json)) {
        return UGraphGetRelationshipsRelationships.relationship(
          data: const RelationshipConverter().fromJson(json),
        );
      }
      if (NotFoundActor.validate(json)) {
        return UGraphGetRelationshipsRelationships.notFoundActor(
          data: const NotFoundActorConverter().fromJson(json),
        );
      }

      return UGraphGetRelationshipsRelationships.unknown(data: json);
    } catch (_) {
      return UGraphGetRelationshipsRelationships.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UGraphGetRelationshipsRelationships object) =>
      object.when(
        relationship: (data) => const RelationshipConverter().toJson(data),
        notFoundActor: (data) => const NotFoundActorConverter().toJson(data),

        unknown: (data) => data,
      );
}
