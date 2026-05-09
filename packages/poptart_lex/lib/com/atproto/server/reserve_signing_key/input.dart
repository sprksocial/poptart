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
abstract class ServerReserveSigningKeyInput
    with _$ServerReserveSigningKeyInput {
  static const knownProps = <String>['did'];

  @JsonSerializable(includeIfNull: false)
  const factory ServerReserveSigningKeyInput({
    /// The DID to reserve a key for.
    String? did,

    Map<String, dynamic>? $unknown,
  }) = _ServerReserveSigningKeyInput;

  factory ServerReserveSigningKeyInput.fromJson(Map<String, Object?> json) =>
      _$ServerReserveSigningKeyInputFromJson(json);
}

extension ServerReserveSigningKeyInputExtension
    on ServerReserveSigningKeyInput {
  bool get hasDid => did != null;
  bool get hasNotDid => !hasDid;
}

final class ServerReserveSigningKeyInputConverter
    extends JsonConverter<ServerReserveSigningKeyInput, Map<String, dynamic>> {
  const ServerReserveSigningKeyInputConverter();

  @override
  ServerReserveSigningKeyInput fromJson(Map<String, dynamic> json) {
    return ServerReserveSigningKeyInput.fromJson(
      translate(json, ServerReserveSigningKeyInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ServerReserveSigningKeyInput object) =>
      untranslate(object.toJson());
}
