// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../../admin/defs/repo_ref.dart';
import '../../repo/strong_ref/main.dart';

part 'union_main_input_subject.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UModerationCreateReportInputSubject
    with _$UModerationCreateReportInputSubject {
  const UModerationCreateReportInputSubject._();

  const factory UModerationCreateReportInputSubject.repoRef({
    required RepoRef data,
  }) = UModerationCreateReportInputSubjectRepoRef;
  const factory UModerationCreateReportInputSubject.repoStrongRef({
    required RepoStrongRef data,
  }) = UModerationCreateReportInputSubjectRepoStrongRef;

  const factory UModerationCreateReportInputSubject.unknown({
    required Map<String, dynamic> data,
  }) = UModerationCreateReportInputSubjectUnknown;

  Map<String, dynamic> toJson() =>
      const UModerationCreateReportInputSubjectConverter().toJson(this);
}

extension UModerationCreateReportInputSubjectExtension
    on UModerationCreateReportInputSubject {
  bool get isRepoRef => isA<UModerationCreateReportInputSubjectRepoRef>(this);
  bool get isNotRepoRef => !isRepoRef;
  RepoRef? get repoRef => isRepoRef ? data as RepoRef : null;
  bool get isRepoStrongRef =>
      isA<UModerationCreateReportInputSubjectRepoStrongRef>(this);
  bool get isNotRepoStrongRef => !isRepoStrongRef;
  RepoStrongRef? get repoStrongRef =>
      isRepoStrongRef ? data as RepoStrongRef : null;
  bool get isUnknown => isA<UModerationCreateReportInputSubjectUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UModerationCreateReportInputSubjectConverter
    implements
        JsonConverter<
          UModerationCreateReportInputSubject,
          Map<String, dynamic>
        > {
  const UModerationCreateReportInputSubjectConverter();

  @override
  UModerationCreateReportInputSubject fromJson(Map<String, dynamic> json) {
    try {
      if (RepoRef.validate(json)) {
        return UModerationCreateReportInputSubject.repoRef(
          data: const RepoRefConverter().fromJson(json),
        );
      }
      if (RepoStrongRef.validate(json)) {
        return UModerationCreateReportInputSubject.repoStrongRef(
          data: const RepoStrongRefConverter().fromJson(json),
        );
      }

      return UModerationCreateReportInputSubject.unknown(data: json);
    } catch (_) {
      return UModerationCreateReportInputSubject.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UModerationCreateReportInputSubject object) =>
      object.when(
        repoRef: (data) => const RepoRefConverter().toJson(data),
        repoStrongRef: (data) => const RepoStrongRefConverter().toJson(data),

        unknown: (data) => data,
      );
}
