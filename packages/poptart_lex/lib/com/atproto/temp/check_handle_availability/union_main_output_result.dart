// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import './result_available.dart';
import './result_unavailable.dart';

part 'union_main_output_result.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UTempCheckHandleAvailabilityOutputResult
    with _$UTempCheckHandleAvailabilityOutputResult {
  const UTempCheckHandleAvailabilityOutputResult._();

  const factory UTempCheckHandleAvailabilityOutputResult.resultAvailable({
    required ResultAvailable data,
  }) = UTempCheckHandleAvailabilityOutputResultResultAvailable;
  const factory UTempCheckHandleAvailabilityOutputResult.resultUnavailable({
    required ResultUnavailable data,
  }) = UTempCheckHandleAvailabilityOutputResultResultUnavailable;

  const factory UTempCheckHandleAvailabilityOutputResult.unknown({
    required Map<String, dynamic> data,
  }) = UTempCheckHandleAvailabilityOutputResultUnknown;

  Map<String, dynamic> toJson() =>
      const UTempCheckHandleAvailabilityOutputResultConverter().toJson(this);
}

extension UTempCheckHandleAvailabilityOutputResultExtension
    on UTempCheckHandleAvailabilityOutputResult {
  bool get isResultAvailable =>
      isA<UTempCheckHandleAvailabilityOutputResultResultAvailable>(this);
  bool get isNotResultAvailable => !isResultAvailable;
  ResultAvailable? get resultAvailable =>
      isResultAvailable ? data as ResultAvailable : null;
  bool get isResultUnavailable =>
      isA<UTempCheckHandleAvailabilityOutputResultResultUnavailable>(this);
  bool get isNotResultUnavailable => !isResultUnavailable;
  ResultUnavailable? get resultUnavailable =>
      isResultUnavailable ? data as ResultUnavailable : null;
  bool get isUnknown =>
      isA<UTempCheckHandleAvailabilityOutputResultUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UTempCheckHandleAvailabilityOutputResultConverter
    implements
        JsonConverter<
          UTempCheckHandleAvailabilityOutputResult,
          Map<String, dynamic>
        > {
  const UTempCheckHandleAvailabilityOutputResultConverter();

  @override
  UTempCheckHandleAvailabilityOutputResult fromJson(Map<String, dynamic> json) {
    try {
      if (ResultAvailable.validate(json)) {
        return UTempCheckHandleAvailabilityOutputResult.resultAvailable(
          data: const ResultAvailableConverter().fromJson(json),
        );
      }
      if (ResultUnavailable.validate(json)) {
        return UTempCheckHandleAvailabilityOutputResult.resultUnavailable(
          data: const ResultUnavailableConverter().fromJson(json),
        );
      }

      return UTempCheckHandleAvailabilityOutputResult.unknown(data: json);
    } catch (_) {
      return UTempCheckHandleAvailabilityOutputResult.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(
    UTempCheckHandleAvailabilityOutputResult object,
  ) => object.when(
    resultAvailable: (data) => const ResultAvailableConverter().toJson(data),
    resultUnavailable: (data) =>
        const ResultUnavailableConverter().toJson(data),

    unknown: (data) => data,
  );
}
