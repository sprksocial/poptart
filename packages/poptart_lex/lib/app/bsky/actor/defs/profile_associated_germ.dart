// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './profile_associated_germ_show_button_to.dart';

part 'profile_associated_germ.freezed.dart';
part 'profile_associated_germ.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ProfileAssociatedGerm with _$ProfileAssociatedGerm {
  static const knownProps = <String>['messageMeUrl', 'showButtonTo'];

  @JsonSerializable(includeIfNull: false)
  const factory ProfileAssociatedGerm({
    @Default('app.bsky.actor.defs#profileAssociatedGerm') String $type,
    required String messageMeUrl,
    @ProfileAssociatedGermShowButtonToConverter()
    required ProfileAssociatedGermShowButtonTo showButtonTo,

    Map<String, dynamic>? $unknown,
  }) = _ProfileAssociatedGerm;

  factory ProfileAssociatedGerm.fromJson(Map<String, Object?> json) =>
      _$ProfileAssociatedGermFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.actor.defs#profileAssociatedGerm';
  }
}

final class ProfileAssociatedGermConverter
    extends JsonConverter<ProfileAssociatedGerm, Map<String, dynamic>> {
  const ProfileAssociatedGermConverter();

  @override
  ProfileAssociatedGerm fromJson(Map<String, dynamic> json) {
    return ProfileAssociatedGerm.fromJson(
      translate(json, ProfileAssociatedGerm.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ProfileAssociatedGerm object) =>
      untranslate(object.toJson());
}
