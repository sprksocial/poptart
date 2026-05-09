// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './access.dart';

part 'config_region_rule_if_assured_under_age.freezed.dart';
part 'config_region_rule_if_assured_under_age.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Age Assurance rule that applies if the user has been assured to be under a certain age.
@freezed
abstract class ConfigRegionRuleIfAssuredUnderAge
    with _$ConfigRegionRuleIfAssuredUnderAge {
  static const knownProps = <String>['age', 'access'];

  @JsonSerializable(includeIfNull: false)
  const factory ConfigRegionRuleIfAssuredUnderAge({
    @Default('app.bsky.ageassurance.defs#configRegionRuleIfAssuredUnderAge')
    String $type,

    /// The age threshold as a whole integer.
    required int age,
    @AccessConverter() required Access access,

    Map<String, dynamic>? $unknown,
  }) = _ConfigRegionRuleIfAssuredUnderAge;

  factory ConfigRegionRuleIfAssuredUnderAge.fromJson(
    Map<String, Object?> json,
  ) => _$ConfigRegionRuleIfAssuredUnderAgeFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'app.bsky.ageassurance.defs#configRegionRuleIfAssuredUnderAge';
  }
}

final class ConfigRegionRuleIfAssuredUnderAgeConverter
    extends
        JsonConverter<ConfigRegionRuleIfAssuredUnderAge, Map<String, dynamic>> {
  const ConfigRegionRuleIfAssuredUnderAgeConverter();

  @override
  ConfigRegionRuleIfAssuredUnderAge fromJson(Map<String, dynamic> json) {
    return ConfigRegionRuleIfAssuredUnderAge.fromJson(
      translate(json, ConfigRegionRuleIfAssuredUnderAge.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConfigRegionRuleIfAssuredUnderAge object) =>
      untranslate(object.toJson());
}
