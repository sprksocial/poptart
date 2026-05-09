// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './access.dart';

part 'config_region_rule_if_assured_over_age.freezed.dart';
part 'config_region_rule_if_assured_over_age.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Age Assurance rule that applies if the user has been assured to be equal-to or over a certain age.
@freezed
abstract class ConfigRegionRuleIfAssuredOverAge
    with _$ConfigRegionRuleIfAssuredOverAge {
  static const knownProps = <String>['age', 'access'];

  @JsonSerializable(includeIfNull: false)
  const factory ConfigRegionRuleIfAssuredOverAge({
    @Default('app.bsky.ageassurance.defs#configRegionRuleIfAssuredOverAge')
    String $type,

    /// The age threshold as a whole integer.
    required int age,
    @AccessConverter() required Access access,

    Map<String, dynamic>? $unknown,
  }) = _ConfigRegionRuleIfAssuredOverAge;

  factory ConfigRegionRuleIfAssuredOverAge.fromJson(
    Map<String, Object?> json,
  ) => _$ConfigRegionRuleIfAssuredOverAgeFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.ageassurance.defs#configRegionRuleIfAssuredOverAge';
  }
}

final class ConfigRegionRuleIfAssuredOverAgeConverter
    extends
        JsonConverter<ConfigRegionRuleIfAssuredOverAge, Map<String, dynamic>> {
  const ConfigRegionRuleIfAssuredOverAgeConverter();

  @override
  ConfigRegionRuleIfAssuredOverAge fromJson(Map<String, dynamic> json) {
    return ConfigRegionRuleIfAssuredOverAge.fromJson(
      translate(json, ConfigRegionRuleIfAssuredOverAge.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConfigRegionRuleIfAssuredOverAge object) =>
      untranslate(object.toJson());
}
