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
abstract class SyncNotifyOfUpdateInput with _$SyncNotifyOfUpdateInput {
  static const knownProps = <String>['hostname'];

  @JsonSerializable(includeIfNull: false)
  const factory SyncNotifyOfUpdateInput({
    /// Hostname of the current service (usually a PDS) that is notifying of update.
    required String hostname,

    Map<String, dynamic>? $unknown,
  }) = _SyncNotifyOfUpdateInput;

  factory SyncNotifyOfUpdateInput.fromJson(Map<String, Object?> json) =>
      _$SyncNotifyOfUpdateInputFromJson(json);
}

final class SyncNotifyOfUpdateInputConverter
    extends JsonConverter<SyncNotifyOfUpdateInput, Map<String, dynamic>> {
  const SyncNotifyOfUpdateInputConverter();

  @override
  SyncNotifyOfUpdateInput fromJson(Map<String, dynamic> json) {
    return SyncNotifyOfUpdateInput.fromJson(
      translate(json, SyncNotifyOfUpdateInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SyncNotifyOfUpdateInput object) =>
      untranslate(object.toJson());
}
