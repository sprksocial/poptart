// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './activity_subscription.dart';
import './chat_preference.dart';
import './filterable_preference.dart';
import './preference.dart';
import './preferences.dart';
import './record_deleted.dart';
import './subject_activity_subscription.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final recordDeletedDescriptor = XRPCObjectDescriptor<RecordDeleted>(
  nsid: 'app.bsky.notification.defs',
  defName: 'recordDeleted',
  fromJson: (json) =>
      const RecordDeletedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const RecordDeletedConverter().toJson,
  matches: RecordDeleted.validate,
);

final chatPreferenceDescriptor = XRPCObjectDescriptor<ChatPreference>(
  nsid: 'app.bsky.notification.defs',
  defName: 'chatPreference',
  fromJson: (json) =>
      const ChatPreferenceConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ChatPreferenceConverter().toJson,
  matches: ChatPreference.validate,
);

final filterablePreferenceDescriptor =
    XRPCObjectDescriptor<FilterablePreference>(
      nsid: 'app.bsky.notification.defs',
      defName: 'filterablePreference',
      fromJson: (json) => const FilterablePreferenceConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const FilterablePreferenceConverter().toJson,
      matches: FilterablePreference.validate,
    );

final preferenceDescriptor = XRPCObjectDescriptor<Preference>(
  nsid: 'app.bsky.notification.defs',
  defName: 'preference',
  fromJson: (json) =>
      const PreferenceConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const PreferenceConverter().toJson,
  matches: Preference.validate,
);

final preferencesDescriptor = XRPCObjectDescriptor<Preferences>(
  nsid: 'app.bsky.notification.defs',
  defName: 'preferences',
  fromJson: (json) =>
      const PreferencesConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const PreferencesConverter().toJson,
  matches: Preferences.validate,
);

final activitySubscriptionDescriptor =
    XRPCObjectDescriptor<ActivitySubscription>(
      nsid: 'app.bsky.notification.defs',
      defName: 'activitySubscription',
      fromJson: (json) => const ActivitySubscriptionConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ActivitySubscriptionConverter().toJson,
      matches: ActivitySubscription.validate,
    );

final subjectActivitySubscriptionDescriptor =
    XRPCObjectDescriptor<SubjectActivitySubscription>(
      nsid: 'app.bsky.notification.defs',
      defName: 'subjectActivitySubscription',
      fromJson: (json) => const SubjectActivitySubscriptionConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const SubjectActivitySubscriptionConverter().toJson,
      matches: SubjectActivitySubscription.validate,
    );
