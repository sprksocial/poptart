// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './access.dart';

part 'config_region_rule_if_account_older_than.freezed.dart';
part 'config_region_rule_if_account_older_than.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Age Assurance rule that applies if the account is older than a certain date.
@freezed
abstract class ConfigRegionRuleIfAccountOlderThan
    with _$ConfigRegionRuleIfAccountOlderThan {
  static const knownProps = <String>['date', 'access'];

  @JsonSerializable(includeIfNull: false)
  const factory ConfigRegionRuleIfAccountOlderThan({
    @Default('app.bsky.ageassurance.defs#configRegionRuleIfAccountOlderThan')
    String $type,

    /// The date threshold as a datetime string.
    required DateTime date,
    @AccessConverter() required Access access,

    Map<String, dynamic>? $unknown,
  }) = _ConfigRegionRuleIfAccountOlderThan;

  factory ConfigRegionRuleIfAccountOlderThan.fromJson(
    Map<String, Object?> json,
  ) => _$ConfigRegionRuleIfAccountOlderThanFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.ageassurance.defs#configRegionRuleIfAccountOlderThan';
  }
}

final class ConfigRegionRuleIfAccountOlderThanConverter
    extends
        JsonConverter<
          ConfigRegionRuleIfAccountOlderThan,
          Map<String, dynamic>
        > {
  const ConfigRegionRuleIfAccountOlderThanConverter();

  @override
  ConfigRegionRuleIfAccountOlderThan fromJson(Map<String, dynamic> json) {
    return ConfigRegionRuleIfAccountOlderThan.fromJson(
      translate(json, ConfigRegionRuleIfAccountOlderThan.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConfigRegionRuleIfAccountOlderThan object) =>
      untranslate(object.toJson());
}
