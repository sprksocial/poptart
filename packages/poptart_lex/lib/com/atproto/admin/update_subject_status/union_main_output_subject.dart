// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../defs/repo_ref.dart';
import '../../repo/strong_ref/main.dart';
import '../defs/repo_blob_ref.dart';

part 'union_main_output_subject.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UAdminUpdateSubjectStatusOutputSubject
    with _$UAdminUpdateSubjectStatusOutputSubject {
  const UAdminUpdateSubjectStatusOutputSubject._();

  const factory UAdminUpdateSubjectStatusOutputSubject.repoRef({
    required RepoRef data,
  }) = UAdminUpdateSubjectStatusOutputSubjectRepoRef;
  const factory UAdminUpdateSubjectStatusOutputSubject.repoStrongRef({
    required RepoStrongRef data,
  }) = UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef;
  const factory UAdminUpdateSubjectStatusOutputSubject.repoBlobRef({
    required RepoBlobRef data,
  }) = UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef;

  const factory UAdminUpdateSubjectStatusOutputSubject.unknown({
    required Map<String, dynamic> data,
  }) = UAdminUpdateSubjectStatusOutputSubjectUnknown;

  Map<String, dynamic> toJson() =>
      const UAdminUpdateSubjectStatusOutputSubjectConverter().toJson(this);
}

extension UAdminUpdateSubjectStatusOutputSubjectExtension
    on UAdminUpdateSubjectStatusOutputSubject {
  bool get isRepoRef =>
      isA<UAdminUpdateSubjectStatusOutputSubjectRepoRef>(this);
  bool get isNotRepoRef => !isRepoRef;
  RepoRef? get repoRef => isRepoRef ? data as RepoRef : null;
  bool get isRepoStrongRef =>
      isA<UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef>(this);
  bool get isNotRepoStrongRef => !isRepoStrongRef;
  RepoStrongRef? get repoStrongRef =>
      isRepoStrongRef ? data as RepoStrongRef : null;
  bool get isRepoBlobRef =>
      isA<UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef>(this);
  bool get isNotRepoBlobRef => !isRepoBlobRef;
  RepoBlobRef? get repoBlobRef => isRepoBlobRef ? data as RepoBlobRef : null;
  bool get isUnknown =>
      isA<UAdminUpdateSubjectStatusOutputSubjectUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UAdminUpdateSubjectStatusOutputSubjectConverter
    implements
        JsonConverter<
          UAdminUpdateSubjectStatusOutputSubject,
          Map<String, dynamic>
        > {
  const UAdminUpdateSubjectStatusOutputSubjectConverter();

  @override
  UAdminUpdateSubjectStatusOutputSubject fromJson(Map<String, dynamic> json) {
    try {
      if (RepoRef.validate(json)) {
        return UAdminUpdateSubjectStatusOutputSubject.repoRef(
          data: const RepoRefConverter().fromJson(json),
        );
      }
      if (RepoStrongRef.validate(json)) {
        return UAdminUpdateSubjectStatusOutputSubject.repoStrongRef(
          data: const RepoStrongRefConverter().fromJson(json),
        );
      }
      if (RepoBlobRef.validate(json)) {
        return UAdminUpdateSubjectStatusOutputSubject.repoBlobRef(
          data: const RepoBlobRefConverter().fromJson(json),
        );
      }

      return UAdminUpdateSubjectStatusOutputSubject.unknown(data: json);
    } catch (_) {
      return UAdminUpdateSubjectStatusOutputSubject.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UAdminUpdateSubjectStatusOutputSubject object) =>
      object.when(
        repoRef: (data) => const RepoRefConverter().toJson(data),
        repoStrongRef: (data) => const RepoStrongRefConverter().toJson(data),
        repoBlobRef: (data) => const RepoBlobRefConverter().toJson(data),

        unknown: (data) => data,
      );
}
