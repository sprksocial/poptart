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
abstract class SyncGetRepoStatusInput with _$SyncGetRepoStatusInput {
  static const knownProps = <String>['did'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncGetRepoStatusInput({
    /// The DID of the repo.
    required String did,

    Map<String, dynamic>? $unknown,
  }) = _SyncGetRepoStatusInput;

  factory SyncGetRepoStatusInput.fromJson(Map<String, Object?> json) =>
      _$SyncGetRepoStatusInputFromJson(json);
}

final class SyncGetRepoStatusInputConverter
    extends JsonConverter<SyncGetRepoStatusInput, Map<String, dynamic>> {
  const SyncGetRepoStatusInputConverter();

  @override
  SyncGetRepoStatusInput fromJson(Map<String, dynamic> json) {
    return SyncGetRepoStatusInput.fromJson(
      translate(json, SyncGetRepoStatusInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SyncGetRepoStatusInput object) =>
      untranslate(object.toJson());
}
