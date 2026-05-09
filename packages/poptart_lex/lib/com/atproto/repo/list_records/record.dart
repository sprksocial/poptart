// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'record.freezed.dart';
part 'record.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class RepoListRecordsRecord with _$RepoListRecordsRecord {
  static const knownProps = <String>['uri', 'cid', 'value'];

  @JsonSerializable(includeIfNull: false)
  const factory RepoListRecordsRecord({
    @Default('com.atproto.repo.listRecords#record') String $type,
    @AtUriConverter() required AtUri uri,
    required String cid,
    required Map<String, dynamic> value,

    Map<String, dynamic>? $unknown,
  }) = _RepoListRecordsRecord;

  factory RepoListRecordsRecord.fromJson(Map<String, Object?> json) =>
      _$RepoListRecordsRecordFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'com.atproto.repo.listRecords#record';
  }
}

final class RepoListRecordsRecordConverter
    extends JsonConverter<RepoListRecordsRecord, Map<String, dynamic>> {
  const RepoListRecordsRecordConverter();

  @override
  RepoListRecordsRecord fromJson(Map<String, dynamic> json) {
    return RepoListRecordsRecord.fromJson(
      translate(json, RepoListRecordsRecord.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(RepoListRecordsRecord object) =>
      untranslate(object.toJson());
}
