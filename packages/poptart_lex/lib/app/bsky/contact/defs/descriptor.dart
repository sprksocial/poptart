// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './match_and_contact_index.dart';
import './notification.dart';
import './sync_status.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final matchAndContactIndexDescriptor =
    XRPCObjectDescriptor<MatchAndContactIndex>(
      nsid: 'app.bsky.contact.defs',
      defName: 'matchAndContactIndex',
      fromJson: (json) => const MatchAndContactIndexConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const MatchAndContactIndexConverter().toJson,
      matches: MatchAndContactIndex.validate,
    );

final syncStatusDescriptor = XRPCObjectDescriptor<SyncStatus>(
  nsid: 'app.bsky.contact.defs',
  defName: 'syncStatus',
  fromJson: (json) =>
      const SyncStatusConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SyncStatusConverter().toJson,
  matches: SyncStatus.validate,
);

final notificationDescriptor = XRPCObjectDescriptor<Notification>(
  nsid: 'app.bsky.contact.defs',
  defName: 'notification',
  fromJson: (json) =>
      const NotificationConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const NotificationConverter().toJson,
  matches: Notification.validate,
);
