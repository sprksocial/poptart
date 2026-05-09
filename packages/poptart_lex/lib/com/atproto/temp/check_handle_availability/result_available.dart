// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'result_available.freezed.dart';
part 'result_available.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Indicates the provided handle is available.
@freezed
abstract class ResultAvailable with _$ResultAvailable {
  static const knownProps = <String>[];

  @JsonSerializable(includeIfNull: false)
  const factory ResultAvailable({
    @Default('com.atproto.temp.checkHandleAvailability#resultAvailable')
    String $type,

    Map<String, dynamic>? $unknown,
  }) = _ResultAvailable;

  factory ResultAvailable.fromJson(Map<String, Object?> json) =>
      _$ResultAvailableFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] ==
        'com.atproto.temp.checkHandleAvailability#resultAvailable';
  }
}

final class ResultAvailableConverter
    extends JsonConverter<ResultAvailable, Map<String, dynamic>> {
  const ResultAvailableConverter();

  @override
  ResultAvailable fromJson(Map<String, dynamic> json) {
    return ResultAvailable.fromJson(
      translate(json, ResultAvailable.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ResultAvailable object) =>
      untranslate(object.toJson());
}
