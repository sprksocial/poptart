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
abstract class SyncListReposByCollectionInput
    with _$SyncListReposByCollectionInput {
  static const knownProps = <String>['collection', 'limit', 'cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncListReposByCollectionInput({
    required String collection,

    /// Maximum size of response set. Recommend setting a large maximum (1000+) when enumerating large DID lists.
    @Default(500) int limit,
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _SyncListReposByCollectionInput;

  factory SyncListReposByCollectionInput.fromJson(Map<String, Object?> json) =>
      _$SyncListReposByCollectionInputFromJson(json);
}

extension SyncListReposByCollectionInputExtension
    on SyncListReposByCollectionInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SyncListReposByCollectionInputConverter
    extends
        JsonConverter<SyncListReposByCollectionInput, Map<String, dynamic>> {
  const SyncListReposByCollectionInputConverter();

  @override
  SyncListReposByCollectionInput fromJson(Map<String, dynamic> json) {
    return SyncListReposByCollectionInput.fromJson(
      translate(json, SyncListReposByCollectionInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SyncListReposByCollectionInput object) =>
      untranslate(object.toJson());
}
