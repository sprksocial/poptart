// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './account_created.dart';
import './email_confirmed.dart';
import './email_updated.dart';
import './event.dart';
import './handle_updated.dart';
import './input.dart';
import './output.dart';
import './password_updated.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final eventDescriptor = XRPCObjectDescriptor<Event>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'event',
  fromJson: (json) =>
      const EventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EventConverter().toJson,
  matches: Event.validate,
);

final accountCreatedDescriptor = XRPCObjectDescriptor<AccountCreated>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'accountCreated',
  fromJson: (json) =>
      const AccountCreatedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AccountCreatedConverter().toJson,
  matches: AccountCreated.validate,
);

final emailUpdatedDescriptor = XRPCObjectDescriptor<EmailUpdated>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'emailUpdated',
  fromJson: (json) =>
      const EmailUpdatedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmailUpdatedConverter().toJson,
  matches: EmailUpdated.validate,
);

final emailConfirmedDescriptor = XRPCObjectDescriptor<EmailConfirmed>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'emailConfirmed',
  fromJson: (json) =>
      const EmailConfirmedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmailConfirmedConverter().toJson,
  matches: EmailConfirmed.validate,
);

final passwordUpdatedDescriptor = XRPCObjectDescriptor<PasswordUpdated>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'passwordUpdated',
  fromJson: (json) =>
      const PasswordUpdatedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const PasswordUpdatedConverter().toJson,
  matches: PasswordUpdated.validate,
);

final handleUpdatedDescriptor = XRPCObjectDescriptor<HandleUpdated>(
  nsid: 'tools.ozone.hosting.getAccountHistory',
  defName: 'handleUpdated',
  fromJson: (json) =>
      const HandleUpdatedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const HandleUpdatedConverter().toJson,
  matches: HandleUpdated.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      HostingGetAccountHistoryInput,
      EmptyData,
      HostingGetAccountHistoryOutput
    >(
      nsid: NSID.parse('tools.ozone.hosting.getAccountHistory'),
      kind: XRPCMethodKind.query,
      parametersFromJson: (json) =>
          const HostingGetAccountHistoryInputConverter().fromJson(
            json.cast<String, dynamic>(),
          ),
      parametersToJson: const HostingGetAccountHistoryInputConverter().toJson,
      outputFromJson: (json) => const HostingGetAccountHistoryOutputConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const HostingGetAccountHistoryOutputConverter().toJson,
      errors: const [],
    );

final toolsOzoneHostingGetAccountHistory = methodDescriptor;
