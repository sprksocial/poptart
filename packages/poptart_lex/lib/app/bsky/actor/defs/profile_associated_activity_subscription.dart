// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './profile_associated_activity_subscription_allow_subscriptions.dart';

part 'profile_associated_activity_subscription.freezed.dart';
part 'profile_associated_activity_subscription.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ProfileAssociatedActivitySubscription
    with _$ProfileAssociatedActivitySubscription {
  static const knownProps = <String>['allowSubscriptions'];

  @JsonSerializable(includeIfNull: false)
  const factory ProfileAssociatedActivitySubscription({
    @Default('app.bsky.actor.defs#profileAssociatedActivitySubscription')
    String $type,
    @ProfileAssociatedActivitySubscriptionAllowSubscriptionsConverter()
    required ProfileAssociatedActivitySubscriptionAllowSubscriptions
    allowSubscriptions,

    Map<String, dynamic>? $unknown,
  }) = _ProfileAssociatedActivitySubscription;

  factory ProfileAssociatedActivitySubscription.fromJson(
    Map<String, Object?> json,
  ) => _$ProfileAssociatedActivitySubscriptionFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.actor.defs#profileAssociatedActivitySubscription';
  }
}

final class ProfileAssociatedActivitySubscriptionConverter
    extends
        JsonConverter<
          ProfileAssociatedActivitySubscription,
          Map<String, dynamic>
        > {
  const ProfileAssociatedActivitySubscriptionConverter();

  @override
  ProfileAssociatedActivitySubscription fromJson(Map<String, dynamic> json) {
    return ProfileAssociatedActivitySubscription.fromJson(
      translate(json, ProfileAssociatedActivitySubscription.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ProfileAssociatedActivitySubscription object) =>
      untranslate(object.toJson());
}
