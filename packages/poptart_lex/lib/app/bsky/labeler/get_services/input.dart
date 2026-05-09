// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class LabelerGetServicesInput with _$LabelerGetServicesInput {
  static const knownProps = <String>['dids', 'detailed'];

  @JsonSerializable(includeIfNull: false)
  const factory LabelerGetServicesInput({
    required List<String> dids,
    @Default(false) bool detailed,

    Map<String, dynamic>? $unknown,
  }) = _LabelerGetServicesInput;

  factory LabelerGetServicesInput.fromJson(Map<String, Object?> json) =>
      _$LabelerGetServicesInputFromJson(json);
}

extension LabelerGetServicesInputExtension on LabelerGetServicesInput {
  bool get isDetailed => detailed;
  bool get isNotDetailed => !isDetailed;
}

final class LabelerGetServicesInputConverter
    extends JsonConverter<LabelerGetServicesInput, Map<String, dynamic>> {
  const LabelerGetServicesInputConverter();

  @override
  LabelerGetServicesInput fromJson(Map<String, dynamic> json) {
    return LabelerGetServicesInput.fromJson(
      translate(json, LabelerGetServicesInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(LabelerGetServicesInput object) =>
      untranslate(object.toJson());
}
