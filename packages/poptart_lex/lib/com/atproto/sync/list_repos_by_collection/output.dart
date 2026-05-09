// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './repo.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SyncListReposByCollectionOutput
    with _$SyncListReposByCollectionOutput {
  static const knownProps = <String>['cursor', 'repos'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncListReposByCollectionOutput({
    String? cursor,
    @RepoConverter() required List<Repo> repos,

    Map<String, dynamic>? $unknown,
  }) = _SyncListReposByCollectionOutput;

  factory SyncListReposByCollectionOutput.fromJson(Map<String, Object?> json) =>
      _$SyncListReposByCollectionOutputFromJson(json);
}

extension SyncListReposByCollectionOutputExtension
    on SyncListReposByCollectionOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SyncListReposByCollectionOutputConverter
    extends
        JsonConverter<SyncListReposByCollectionOutput, Map<String, dynamic>> {
  const SyncListReposByCollectionOutputConverter();

  @override
  SyncListReposByCollectionOutput fromJson(Map<String, dynamic> json) {
    return SyncListReposByCollectionOutput.fromJson(
      translate(json, SyncListReposByCollectionOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SyncListReposByCollectionOutput object) =>
      untranslate(object.toJson());
}
