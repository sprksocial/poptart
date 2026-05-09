// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'repo_blob_ref.freezed.dart';
part 'repo_blob_ref.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class RepoBlobRef with _$RepoBlobRef {
  static const knownProps = <String>['did', 'cid', 'recordUri'];

  @JsonSerializable(includeIfNull: false)
  const factory RepoBlobRef({
    @Default('com.atproto.admin.defs#repoBlobRef') String $type,
    required String did,
    required String cid,
    @AtUriConverter() AtUri? recordUri,

    Map<String, dynamic>? $unknown,
  }) = _RepoBlobRef;

  factory RepoBlobRef.fromJson(Map<String, Object?> json) =>
      _$RepoBlobRefFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'com.atproto.admin.defs#repoBlobRef';
  }
}

extension RepoBlobRefExtension on RepoBlobRef {
  bool get hasRecordUri => recordUri != null;
  bool get hasNotRecordUri => !hasRecordUri;
}

final class RepoBlobRefConverter
    extends JsonConverter<RepoBlobRef, Map<String, dynamic>> {
  const RepoBlobRefConverter();

  @override
  RepoBlobRef fromJson(Map<String, dynamic> json) {
    return RepoBlobRef.fromJson(translate(json, RepoBlobRef.knownProps));
  }

  @override
  Map<String, dynamic> toJson(RepoBlobRef object) =>
      untranslate(object.toJson());
}
