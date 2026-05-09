// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'repo_view_not_found.freezed.dart';
part 'repo_view_not_found.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class RepoViewNotFound with _$RepoViewNotFound {
  static const knownProps = <String>['did'];

  @JsonSerializable(includeIfNull: false)
  const factory RepoViewNotFound({
    @Default('tools.ozone.moderation.defs#repoViewNotFound') String $type,
    required String did,

    Map<String, dynamic>? $unknown,
  }) = _RepoViewNotFound;

  factory RepoViewNotFound.fromJson(Map<String, Object?> json) =>
      _$RepoViewNotFoundFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#repoViewNotFound';
  }
}

final class RepoViewNotFoundConverter
    extends JsonConverter<RepoViewNotFound, Map<String, dynamic>> {
  const RepoViewNotFoundConverter();

  @override
  RepoViewNotFound fromJson(Map<String, dynamic> json) {
    return RepoViewNotFound.fromJson(
      translate(json, RepoViewNotFound.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(RepoViewNotFound object) =>
      untranslate(object.toJson());
}
