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
abstract class UnspeccedSearchStarterPacksSkeletonInput
    with _$UnspeccedSearchStarterPacksSkeletonInput {
  static const knownProps = <String>['q', 'viewer', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedSearchStarterPacksSkeletonInput({
    /// Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended.
    required String q,

    /// DID of the account making the request (not included for public/unauthenticated queries).
    String? viewer,
    @Default(25) int limit,

    /// Optional pagination mechanism; may not necessarily allow scrolling through entire result set.
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedSearchStarterPacksSkeletonInput;

  factory UnspeccedSearchStarterPacksSkeletonInput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedSearchStarterPacksSkeletonInputFromJson(json);
}

extension UnspeccedSearchStarterPacksSkeletonInputExtension
    on UnspeccedSearchStarterPacksSkeletonInput {
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class UnspeccedSearchStarterPacksSkeletonInputConverter
    extends
        JsonConverter<
          UnspeccedSearchStarterPacksSkeletonInput,
          Map<String, dynamic>
        > {
  const UnspeccedSearchStarterPacksSkeletonInputConverter();

  @override
  UnspeccedSearchStarterPacksSkeletonInput fromJson(Map<String, dynamic> json) {
    return UnspeccedSearchStarterPacksSkeletonInput.fromJson(
      translate(json, UnspeccedSearchStarterPacksSkeletonInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(
    UnspeccedSearchStarterPacksSkeletonInput object,
  ) => untranslate(object.toJson());
}
