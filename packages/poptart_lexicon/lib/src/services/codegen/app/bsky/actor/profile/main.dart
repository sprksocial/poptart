// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import 'package:poptart_core/poptart_core.dart';
import './union_main_labels.dart';
import 'package:poptart_lexicon/com_atproto_repo_strongref.dart';

part 'main.freezed.dart';
part 'main.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// A declaration of a Bluesky account profile.
@freezed
abstract class ActorProfileRecord with _$ActorProfileRecord {
  static const knownProps = <String>[
    'displayName',
    'description',
    'pronouns',
    'website',
    'avatar',
    'banner',
    'labels',
    'joinedViaStarterPack',
    'pinnedPost',
    'createdAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory ActorProfileRecord({
    @Default('app.bsky.actor.profile') String $type,
    String? displayName,

    /// Free-form profile description text.
    String? description,

    /// Free-form pronouns text.
    String? pronouns,
    String? website,

    /// Small image to be displayed next to posts from account. AKA, 'profile picture'
    @BlobConverter() Blob? avatar,

    /// Larger horizontal image to display behind profile view.
    @BlobConverter() Blob? banner,
    @UActorProfileLabelsConverter() UActorProfileLabels? labels,
    @RepoStrongRefConverter() RepoStrongRef? joinedViaStarterPack,
    @RepoStrongRefConverter() RepoStrongRef? pinnedPost,
    DateTime? createdAt,

    Map<String, dynamic>? $unknown,
  }) = _ActorProfileRecord;

  factory ActorProfileRecord.fromJson(Map<String, Object?> json) =>
      _$ActorProfileRecordFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.profile';
  }
}

extension ActorProfileRecordExtension on ActorProfileRecord {
  bool get hasDisplayName => displayName != null;
  bool get hasNotDisplayName => !hasDisplayName;
  bool get hasDescription => description != null;
  bool get hasNotDescription => !hasDescription;
  bool get hasPronouns => pronouns != null;
  bool get hasNotPronouns => !hasPronouns;
  bool get hasWebsite => website != null;
  bool get hasNotWebsite => !hasWebsite;
  bool get hasAvatar => avatar != null;
  bool get hasNotAvatar => !hasAvatar;
  bool get hasBanner => banner != null;
  bool get hasNotBanner => !hasBanner;
  bool get hasLabels => labels != null;
  bool get hasNotLabels => !hasLabels;
  bool get hasJoinedViaStarterPack => joinedViaStarterPack != null;
  bool get hasNotJoinedViaStarterPack => !hasJoinedViaStarterPack;
  bool get hasPinnedPost => pinnedPost != null;
  bool get hasNotPinnedPost => !hasPinnedPost;
  bool get hasCreatedAt => createdAt != null;
  bool get hasNotCreatedAt => !hasCreatedAt;
}

final class ActorProfileRecordConverter
    extends JsonConverter<ActorProfileRecord, Map<String, dynamic>> {
  const ActorProfileRecordConverter();

  @override
  ActorProfileRecord fromJson(Map<String, dynamic> json) {
    return ActorProfileRecord.fromJson(
      translate(json, ActorProfileRecord.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ActorProfileRecord object) =>
      untranslate(object.toJson());
}
