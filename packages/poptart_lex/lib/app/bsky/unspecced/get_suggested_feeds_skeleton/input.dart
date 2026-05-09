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
abstract class UnspeccedGetSuggestedFeedsSkeletonInput
    with _$UnspeccedGetSuggestedFeedsSkeletonInput {
  static const knownProps = <String>['viewer', 'limit'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetSuggestedFeedsSkeletonInput({
    /// DID of the account making the request (not included for public/unauthenticated queries).
    String? viewer,
    @Default(10) int limit,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetSuggestedFeedsSkeletonInput;

  factory UnspeccedGetSuggestedFeedsSkeletonInput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetSuggestedFeedsSkeletonInputFromJson(json);
}

extension UnspeccedGetSuggestedFeedsSkeletonInputExtension
    on UnspeccedGetSuggestedFeedsSkeletonInput {
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
}

final class UnspeccedGetSuggestedFeedsSkeletonInputConverter
    extends
        JsonConverter<
          UnspeccedGetSuggestedFeedsSkeletonInput,
          Map<String, dynamic>
        > {
  const UnspeccedGetSuggestedFeedsSkeletonInputConverter();

  @override
  UnspeccedGetSuggestedFeedsSkeletonInput fromJson(Map<String, dynamic> json) {
    return UnspeccedGetSuggestedFeedsSkeletonInput.fromJson(
      translate(json, UnspeccedGetSuggestedFeedsSkeletonInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(UnspeccedGetSuggestedFeedsSkeletonInput object) =>
      untranslate(object.toJson());
}
