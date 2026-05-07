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

import './profile_associated.dart';
import './viewer_state.dart';
import 'package:poptart_lexicon/com_atproto_label_defs.dart';
import './verification_state.dart';
import './status_view.dart';

part 'profile_view_basic.freezed.dart';
part 'profile_view_basic.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ProfileViewBasic with _$ProfileViewBasic {
  static const knownProps = <String>[
    'did',
    'handle',
    'displayName',
    'pronouns',
    'avatar',
    'associated',
    'viewer',
    'labels',
    'createdAt',
    'verification',
    'status',
    'debug',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory ProfileViewBasic({
    @Default('app.bsky.actor.defs#profileViewBasic') String $type,
    required String did,
    required String handle,
    String? displayName,
    String? pronouns,
    String? avatar,
    @ProfileAssociatedConverter() ProfileAssociated? associated,
    @ViewerStateConverter() ViewerState? viewer,
    @LabelConverter() List<Label>? labels,
    DateTime? createdAt,
    @VerificationStateConverter() VerificationState? verification,
    @StatusViewConverter() StatusView? status,
    Map<String, dynamic>? debug,

    Map<String, dynamic>? $unknown,
  }) = _ProfileViewBasic;

  factory ProfileViewBasic.fromJson(Map<String, Object?> json) =>
      _$ProfileViewBasicFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#profileViewBasic';
  }
}

extension ProfileViewBasicExtension on ProfileViewBasic {
  bool get hasDisplayName => displayName != null;
  bool get hasNotDisplayName => !hasDisplayName;
  bool get hasPronouns => pronouns != null;
  bool get hasNotPronouns => !hasPronouns;
  bool get hasAvatar => avatar != null;
  bool get hasNotAvatar => !hasAvatar;
  bool get hasAssociated => associated != null;
  bool get hasNotAssociated => !hasAssociated;
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
  bool get hasCreatedAt => createdAt != null;
  bool get hasNotCreatedAt => !hasCreatedAt;
  bool get hasVerification => verification != null;
  bool get hasNotVerification => !hasVerification;
  bool get hasStatus => status != null;
  bool get hasNotStatus => !hasStatus;
  bool get hasDebug => debug != null;
  bool get hasNotDebug => !hasDebug;
}

final class ProfileViewBasicConverter
    extends JsonConverter<ProfileViewBasic, Map<String, dynamic>> {
  const ProfileViewBasicConverter();

  @override
  ProfileViewBasic fromJson(Map<String, dynamic> json) {
    return ProfileViewBasic.fromJson(
      translate(json, ProfileViewBasic.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ProfileViewBasic object) =>
      untranslate(object.toJson());
}
