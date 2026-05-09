// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'sig_detail.freezed.dart';
part 'sig_detail.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SigDetail with _$SigDetail {
  static const knownProps = <String>['property', 'value'];

  @JsonSerializable(includeIfNull: false)
  const factory SigDetail({
    @Default('tools.ozone.signature.defs#sigDetail') String $type,
    required String property,
    required String value,

    Map<String, dynamic>? $unknown,
  }) = _SigDetail;

  factory SigDetail.fromJson(Map<String, Object?> json) =>
      _$SigDetailFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.signature.defs#sigDetail';
  }
}

final class SigDetailConverter
    extends JsonConverter<SigDetail, Map<String, dynamic>> {
  const SigDetailConverter();

  @override
  SigDetail fromJson(Map<String, dynamic> json) {
    return SigDetail.fromJson(translate(json, SigDetail.knownProps));
  }

  @override
  Map<String, dynamic> toJson(SigDetail object) => untranslate(object.toJson());
}
