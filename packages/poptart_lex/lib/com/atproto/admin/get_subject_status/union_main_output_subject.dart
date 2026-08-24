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
sealed class UAdminGetSubjectStatusOutputSubject
    with _$UAdminGetSubjectStatusOutputSubject {
  const UAdminGetSubjectStatusOutputSubject._();

  const factory UAdminGetSubjectStatusOutputSubject.repoRef({
    required RepoRef data,
  }) = UAdminGetSubjectStatusOutputSubjectRepoRef;
  const factory UAdminGetSubjectStatusOutputSubject.repoStrongRef({
    required RepoStrongRef data,
  }) = UAdminGetSubjectStatusOutputSubjectRepoStrongRef;
  const factory UAdminGetSubjectStatusOutputSubject.repoBlobRef({
    required RepoBlobRef data,
  }) = UAdminGetSubjectStatusOutputSubjectRepoBlobRef;

  const factory UAdminGetSubjectStatusOutputSubject.unknown({
    required Map<String, dynamic> data,
  }) = UAdminGetSubjectStatusOutputSubjectUnknown;

  Map<String, dynamic> toJson() =>
      const UAdminGetSubjectStatusOutputSubjectConverter().toJson(this);
}

extension UAdminGetSubjectStatusOutputSubjectExtension
    on UAdminGetSubjectStatusOutputSubject {
  bool get isRepoRef => isA<UAdminGetSubjectStatusOutputSubjectRepoRef>(this);
  bool get isNotRepoRef => !isRepoRef;
  RepoRef? get repoRef => isRepoRef ? data as RepoRef : null;
  bool get isRepoStrongRef =>
      isA<UAdminGetSubjectStatusOutputSubjectRepoStrongRef>(this);
  bool get isNotRepoStrongRef => !isRepoStrongRef;
  RepoStrongRef? get repoStrongRef =>
      isRepoStrongRef ? data as RepoStrongRef : null;
  bool get isRepoBlobRef =>
      isA<UAdminGetSubjectStatusOutputSubjectRepoBlobRef>(this);
  bool get isNotRepoBlobRef => !isRepoBlobRef;
  RepoBlobRef? get repoBlobRef => isRepoBlobRef ? data as RepoBlobRef : null;
  bool get isUnknown => isA<UAdminGetSubjectStatusOutputSubjectUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UAdminGetSubjectStatusOutputSubjectConverter
    implements
        JsonConverter<
          UAdminGetSubjectStatusOutputSubject,
          Map<String, dynamic>
        > {
  const UAdminGetSubjectStatusOutputSubjectConverter();

  @override
  UAdminGetSubjectStatusOutputSubject fromJson(Map<String, dynamic> json) {
    try {
      if (RepoRef.validate(json)) {
        return UAdminGetSubjectStatusOutputSubject.repoRef(
          data: const RepoRefConverter().fromJson(json),
        );
      }
      if (RepoStrongRef.validate(json)) {
        return UAdminGetSubjectStatusOutputSubject.repoStrongRef(
          data: const RepoStrongRefConverter().fromJson(json),
        );
      }
      if (RepoBlobRef.validate(json)) {
        return UAdminGetSubjectStatusOutputSubject.repoBlobRef(
          data: const RepoBlobRefConverter().fromJson(json),
        );
      }

      return UAdminGetSubjectStatusOutputSubject.unknown(data: json);
    } catch (_) {
      return UAdminGetSubjectStatusOutputSubject.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UAdminGetSubjectStatusOutputSubject object) =>
      object.when(
        repoRef: (data) => const RepoRefConverter().toJson(data),
        repoStrongRef: (data) => const RepoStrongRefConverter().toJson(data),
        repoBlobRef: (data) => const RepoBlobRefConverter().toJson(data),

        unknown: (data) => data,
      );
}
