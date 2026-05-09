// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/profile_view.dart';

part 'like.freezed.dart';
part 'like.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class Like with _$Like {
  static const knownProps = <String>['indexedAt', 'createdAt', 'actor'];

  @JsonSerializable(includeIfNull: false)
  const factory Like({
    @Default('app.bsky.feed.getLikes#like') String $type,
    required DateTime indexedAt,
    required DateTime createdAt,
    @ProfileViewConverter() required ProfileView actor,

    Map<String, dynamic>? $unknown,
  }) = _Like;

  factory Like.fromJson(Map<String, Object?> json) => _$LikeFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.getLikes#like';
  }
}

final class LikeConverter extends JsonConverter<Like, Map<String, dynamic>> {
  const LikeConverter();

  @override
  Like fromJson(Map<String, dynamic> json) {
    return Like.fromJson(translate(json, Like.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Like object) => untranslate(object.toJson());
}
