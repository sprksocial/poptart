// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'sync_status.freezed.dart';
part 'sync_status.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class SyncStatus with _$SyncStatus {
  static const knownProps = <String>['syncedAt', 'matchesCount'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncStatus({
    @Default('app.bsky.contact.defs#syncStatus') String $type,

    /// Last date when contacts where imported.
    required DateTime syncedAt,

    /// Number of existing contact matches resulting of the user imports and of their imported contacts having imported the user. Matches stop being counted when the user either follows the matched contact or dismisses the match.
    required int matchesCount,

    Map<String, dynamic>? $unknown,
  }) = _SyncStatus;

  factory SyncStatus.fromJson(Map<String, Object?> json) =>
      _$SyncStatusFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.contact.defs#syncStatus';
  }
}

final class SyncStatusConverter
    extends JsonConverter<SyncStatus, Map<String, dynamic>> {
  const SyncStatusConverter();

  @override
  SyncStatus fromJson(Map<String, dynamic> json) {
    return SyncStatus.fromJson(translate(json, SyncStatus.knownProps));
  }

  @override
  Map<String, dynamic> toJson(SyncStatus object) =>
      untranslate(object.toJson());
}
