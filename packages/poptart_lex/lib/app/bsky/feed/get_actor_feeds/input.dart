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
abstract class FeedGetActorFeedsInput with _$FeedGetActorFeedsInput {
  static const knownProps = <String>['actor', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedGetActorFeedsInput({
    required String actor,
    @Default(50) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _FeedGetActorFeedsInput;

  factory FeedGetActorFeedsInput.fromJson(Map<String, Object?> json) =>
      _$FeedGetActorFeedsInputFromJson(json);
}

extension FeedGetActorFeedsInputExtension on FeedGetActorFeedsInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class FeedGetActorFeedsInputConverter
    extends JsonConverter<FeedGetActorFeedsInput, Map<String, dynamic>> {
  const FeedGetActorFeedsInputConverter();

  @override
  FeedGetActorFeedsInput fromJson(Map<String, dynamic> json) {
    return FeedGetActorFeedsInput.fromJson(
      translate(json, FeedGetActorFeedsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedGetActorFeedsInput object) =>
      untranslate(object.toJson());
}
