// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'main.freezed.dart';
part 'main.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Record representing a block relationship against an entire an entire list of accounts (actors).
@freezed
abstract class GraphListblockRecord with _$GraphListblockRecord {
  static const knownProps = <String>['subject', 'createdAt'];

  @JsonSerializable(includeIfNull: false)
  const factory GraphListblockRecord({
    @Default('app.bsky.graph.listblock') String $type,

    /// Reference (AT-URI) to the mod list record.
    @AtUriConverter() required AtUri subject,
    required DateTime createdAt,

    Map<String, dynamic>? $unknown,
  }) = _GraphListblockRecord;

  factory GraphListblockRecord.fromJson(Map<String, Object?> json) =>
      _$GraphListblockRecordFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.graph.listblock';
  }
}

final class GraphListblockRecordConverter
    extends JsonConverter<GraphListblockRecord, Map<String, dynamic>> {
  const GraphListblockRecordConverter();

  @override
  GraphListblockRecord fromJson(Map<String, dynamic> json) {
    return GraphListblockRecord.fromJson(
      translate(json, GraphListblockRecord.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(GraphListblockRecord object) =>
      untranslate(object.toJson());
}
