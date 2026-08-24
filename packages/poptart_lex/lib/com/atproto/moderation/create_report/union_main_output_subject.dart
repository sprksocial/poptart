// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../../admin/defs/repo_ref.dart';
import '../../repo/strong_ref/main.dart';

part 'union_main_output_subject.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UModerationCreateReportOutputSubject
    with _$UModerationCreateReportOutputSubject {
  const UModerationCreateReportOutputSubject._();

  const factory UModerationCreateReportOutputSubject.repoRef({
    required RepoRef data,
  }) = UModerationCreateReportOutputSubjectRepoRef;
  const factory UModerationCreateReportOutputSubject.repoStrongRef({
    required RepoStrongRef data,
  }) = UModerationCreateReportOutputSubjectRepoStrongRef;

  const factory UModerationCreateReportOutputSubject.unknown({
    required Map<String, dynamic> data,
  }) = UModerationCreateReportOutputSubjectUnknown;

  Map<String, dynamic> toJson() =>
      const UModerationCreateReportOutputSubjectConverter().toJson(this);
}

extension UModerationCreateReportOutputSubjectExtension
    on UModerationCreateReportOutputSubject {
  bool get isRepoRef => isA<UModerationCreateReportOutputSubjectRepoRef>(this);
  bool get isNotRepoRef => !isRepoRef;
  RepoRef? get repoRef => isRepoRef ? data as RepoRef : null;
  bool get isRepoStrongRef =>
      isA<UModerationCreateReportOutputSubjectRepoStrongRef>(this);
  bool get isNotRepoStrongRef => !isRepoStrongRef;
  RepoStrongRef? get repoStrongRef =>
      isRepoStrongRef ? data as RepoStrongRef : null;
  bool get isUnknown => isA<UModerationCreateReportOutputSubjectUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UModerationCreateReportOutputSubjectConverter
    implements
        JsonConverter<
          UModerationCreateReportOutputSubject,
          Map<String, dynamic>
        > {
  const UModerationCreateReportOutputSubjectConverter();

  @override
  UModerationCreateReportOutputSubject fromJson(Map<String, dynamic> json) {
    try {
      if (RepoRef.validate(json)) {
        return UModerationCreateReportOutputSubject.repoRef(
          data: const RepoRefConverter().fromJson(json),
        );
      }
      if (RepoStrongRef.validate(json)) {
        return UModerationCreateReportOutputSubject.repoStrongRef(
          data: const RepoStrongRefConverter().fromJson(json),
        );
      }

      return UModerationCreateReportOutputSubject.unknown(data: json);
    } catch (_) {
      return UModerationCreateReportOutputSubject.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UModerationCreateReportOutputSubject object) =>
      object.when(
        repoRef: (data) => const RepoRefConverter().toJson(data),
        repoStrongRef: (data) => const RepoStrongRefConverter().toJson(data),

        unknown: (data) => data,
      );
}
