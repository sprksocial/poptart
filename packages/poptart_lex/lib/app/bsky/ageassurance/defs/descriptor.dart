// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './config.dart';
import './config_region.dart';
import './config_region_rule_default.dart';
import './config_region_rule_if_account_newer_than.dart';
import './config_region_rule_if_account_older_than.dart';
import './config_region_rule_if_assured_over_age.dart';
import './config_region_rule_if_assured_under_age.dart';
import './config_region_rule_if_declared_over_age.dart';
import './config_region_rule_if_declared_under_age.dart';
import './event.dart';
import './state.dart';
import './state_metadata.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final stateDescriptor = XRPCObjectDescriptor<State>(
  nsid: 'app.bsky.ageassurance.defs',
  defName: 'state',
  fromJson: (json) =>
      const StateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const StateConverter().toJson,
  matches: State.validate,
);

final stateMetadataDescriptor = XRPCObjectDescriptor<StateMetadata>(
  nsid: 'app.bsky.ageassurance.defs',
  defName: 'stateMetadata',
  fromJson: (json) =>
      const StateMetadataConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const StateMetadataConverter().toJson,
  matches: StateMetadata.validate,
);

final configDescriptor = XRPCObjectDescriptor<Config>(
  nsid: 'app.bsky.ageassurance.defs',
  defName: 'config',
  fromJson: (json) =>
      const ConfigConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ConfigConverter().toJson,
  matches: Config.validate,
);

final configRegionDescriptor = XRPCObjectDescriptor<ConfigRegion>(
  nsid: 'app.bsky.ageassurance.defs',
  defName: 'configRegion',
  fromJson: (json) =>
      const ConfigRegionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ConfigRegionConverter().toJson,
  matches: ConfigRegion.validate,
);

final configRegionRuleDefaultDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleDefault>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleDefault',
      fromJson: (json) => const ConfigRegionRuleDefaultConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ConfigRegionRuleDefaultConverter().toJson,
      matches: ConfigRegionRuleDefault.validate,
    );

final configRegionRuleIfDeclaredOverAgeDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfDeclaredOverAge>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfDeclaredOverAge',
      fromJson: (json) => const ConfigRegionRuleIfDeclaredOverAgeConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfDeclaredOverAgeConverter().toJson,
      matches: ConfigRegionRuleIfDeclaredOverAge.validate,
    );

final configRegionRuleIfDeclaredUnderAgeDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfDeclaredUnderAge>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfDeclaredUnderAge',
      fromJson: (json) => const ConfigRegionRuleIfDeclaredUnderAgeConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfDeclaredUnderAgeConverter().toJson,
      matches: ConfigRegionRuleIfDeclaredUnderAge.validate,
    );

final configRegionRuleIfAssuredOverAgeDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfAssuredOverAge>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfAssuredOverAge',
      fromJson: (json) => const ConfigRegionRuleIfAssuredOverAgeConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfAssuredOverAgeConverter().toJson,
      matches: ConfigRegionRuleIfAssuredOverAge.validate,
    );

final configRegionRuleIfAssuredUnderAgeDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfAssuredUnderAge>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfAssuredUnderAge',
      fromJson: (json) => const ConfigRegionRuleIfAssuredUnderAgeConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfAssuredUnderAgeConverter().toJson,
      matches: ConfigRegionRuleIfAssuredUnderAge.validate,
    );

final configRegionRuleIfAccountNewerThanDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfAccountNewerThan>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfAccountNewerThan',
      fromJson: (json) => const ConfigRegionRuleIfAccountNewerThanConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfAccountNewerThanConverter().toJson,
      matches: ConfigRegionRuleIfAccountNewerThan.validate,
    );

final configRegionRuleIfAccountOlderThanDescriptor =
    XRPCObjectDescriptor<ConfigRegionRuleIfAccountOlderThan>(
      nsid: 'app.bsky.ageassurance.defs',
      defName: 'configRegionRuleIfAccountOlderThan',
      fromJson: (json) => const ConfigRegionRuleIfAccountOlderThanConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ConfigRegionRuleIfAccountOlderThanConverter().toJson,
      matches: ConfigRegionRuleIfAccountOlderThan.validate,
    );

final eventDescriptor = XRPCObjectDescriptor<Event>(
  nsid: 'app.bsky.ageassurance.defs',
  defName: 'event',
  fromJson: (json) =>
      const EventConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EventConverter().toJson,
  matches: Event.validate,
);
