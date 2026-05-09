// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'record_view_not_found.freezed.dart';
part 'record_view_not_found.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class RecordViewNotFound with _$RecordViewNotFound {
  static const knownProps = <String>['uri'];

  @JsonSerializable(includeIfNull: false)
  const factory RecordViewNotFound({
    @Default('tools.ozone.moderation.defs#recordViewNotFound') String $type,
    @AtUriConverter() required AtUri uri,

    Map<String, dynamic>? $unknown,
  }) = _RecordViewNotFound;

  factory RecordViewNotFound.fromJson(Map<String, Object?> json) =>
      _$RecordViewNotFoundFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#recordViewNotFound';
  }
}

final class RecordViewNotFoundConverter
    extends JsonConverter<RecordViewNotFound, Map<String, dynamic>> {
  const RecordViewNotFoundConverter();

  @override
  RecordViewNotFound fromJson(Map<String, dynamic> json) {
    return RecordViewNotFound.fromJson(
      translate(json, RecordViewNotFound.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(RecordViewNotFound object) =>
      untranslate(object.toJson());
}
