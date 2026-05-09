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
abstract class SyncSubscribeReposInput with _$SyncSubscribeReposInput {
  static const knownProps = <String>['cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncSubscribeReposInput({
    /// The last known event seq number to backfill from.
    int? cursor,

    Map<String, dynamic>? $unknown,
  }) = _SyncSubscribeReposInput;

  factory SyncSubscribeReposInput.fromJson(Map<String, Object?> json) =>
      _$SyncSubscribeReposInputFromJson(json);
}

extension SyncSubscribeReposInputExtension on SyncSubscribeReposInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class SyncSubscribeReposInputConverter
    extends JsonConverter<SyncSubscribeReposInput, Map<String, dynamic>> {
  const SyncSubscribeReposInputConverter();

  @override
  SyncSubscribeReposInput fromJson(Map<String, dynamic> json) {
    return SyncSubscribeReposInput.fromJson(
      translate(json, SyncSubscribeReposInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SyncSubscribeReposInput object) =>
      untranslate(object.toJson());
}
