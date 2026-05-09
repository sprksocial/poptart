// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class Repo with _$Repo {
  static const knownProps = <String>['did'];

  @JsonSerializable(includeIfNull: false)
  const factory Repo({
    @Default('com.atproto.sync.listReposByCollection#repo') String $type,
    required String did,

    Map<String, dynamic>? $unknown,
  }) = _Repo;

  factory Repo.fromJson(Map<String, Object?> json) => _$RepoFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'com.atproto.sync.listReposByCollection#repo';
  }
}

final class RepoConverter extends JsonConverter<Repo, Map<String, dynamic>> {
  const RepoConverter();

  @override
  Repo fromJson(Map<String, dynamic> json) {
    return Repo.fromJson(translate(json, Repo.knownProps));
  }

  @override
  Map<String, dynamic> toJson(Repo object) => untranslate(object.toJson());
}
