// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ServerReserveSigningKeyOutput
    with _$ServerReserveSigningKeyOutput {
  static const knownProps = <String>['signingKey'];

  @JsonSerializable(includeIfNull: false)
  const factory ServerReserveSigningKeyOutput({
    /// The public key for the reserved signing key, in did:key serialization.
    required String signingKey,

    Map<String, dynamic>? $unknown,
  }) = _ServerReserveSigningKeyOutput;

  factory ServerReserveSigningKeyOutput.fromJson(Map<String, Object?> json) =>
      _$ServerReserveSigningKeyOutputFromJson(json);
}

final class ServerReserveSigningKeyOutputConverter
    extends JsonConverter<ServerReserveSigningKeyOutput, Map<String, dynamic>> {
  const ServerReserveSigningKeyOutputConverter();

  @override
  ServerReserveSigningKeyOutput fromJson(Map<String, dynamic> json) {
    return ServerReserveSigningKeyOutput.fromJson(
      translate(json, ServerReserveSigningKeyOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ServerReserveSigningKeyOutput object) =>
      untranslate(object.toJson());
}
