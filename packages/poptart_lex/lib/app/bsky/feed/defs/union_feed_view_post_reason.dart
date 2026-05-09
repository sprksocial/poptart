// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import './reason_repost.dart';
import './reason_pin.dart';

part 'union_feed_view_post_reason.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UFeedViewPostReason with _$UFeedViewPostReason {
  const UFeedViewPostReason._();

  const factory UFeedViewPostReason.reasonRepost({required ReasonRepost data}) =
      UFeedViewPostReasonReasonRepost;
  const factory UFeedViewPostReason.reasonPin({required ReasonPin data}) =
      UFeedViewPostReasonReasonPin;

  const factory UFeedViewPostReason.unknown({
    required Map<String, dynamic> data,
  }) = UFeedViewPostReasonUnknown;

  Map<String, dynamic> toJson() =>
      const UFeedViewPostReasonConverter().toJson(this);
}

extension UFeedViewPostReasonExtension on UFeedViewPostReason {
  bool get isReasonRepost => isA<UFeedViewPostReasonReasonRepost>(this);
  bool get isNotReasonRepost => !isReasonRepost;
  ReasonRepost? get reasonRepost =>
      isReasonRepost ? data as ReasonRepost : null;
  bool get isReasonPin => isA<UFeedViewPostReasonReasonPin>(this);
  bool get isNotReasonPin => !isReasonPin;
  ReasonPin? get reasonPin => isReasonPin ? data as ReasonPin : null;
  bool get isUnknown => isA<UFeedViewPostReasonUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UFeedViewPostReasonConverter
    implements JsonConverter<UFeedViewPostReason, Map<String, dynamic>> {
  const UFeedViewPostReasonConverter();

  @override
  UFeedViewPostReason fromJson(Map<String, dynamic> json) {
    try {
      if (ReasonRepost.validate(json)) {
        return UFeedViewPostReason.reasonRepost(
          data: const ReasonRepostConverter().fromJson(json),
        );
      }
      if (ReasonPin.validate(json)) {
        return UFeedViewPostReason.reasonPin(
          data: const ReasonPinConverter().fromJson(json),
        );
      }

      return UFeedViewPostReason.unknown(data: json);
    } catch (_) {
      return UFeedViewPostReason.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UFeedViewPostReason object) => object.when(
    reasonRepost: (data) => const ReasonRepostConverter().toJson(data),
    reasonPin: (data) => const ReasonPinConverter().toJson(data),

    unknown: (data) => data,
  );
}
