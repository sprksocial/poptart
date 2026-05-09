// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './service_config.dart';
import './viewer_config.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ServerGetConfigOutput with _$ServerGetConfigOutput {
  static const knownProps = <String>[
    'appview',
    'pds',
    'blobDivert',
    'chat',
    'viewer',
    'verifierDid',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory ServerGetConfigOutput({
    @ServiceConfigConverter() ServiceConfig? appview,
    @ServiceConfigConverter() ServiceConfig? pds,
    @ServiceConfigConverter() ServiceConfig? blobDivert,
    @ServiceConfigConverter() ServiceConfig? chat,
    @ViewerConfigConverter() ViewerConfig? viewer,

    /// The did of the verifier used for verification.
    String? verifierDid,

    Map<String, dynamic>? $unknown,
  }) = _ServerGetConfigOutput;

  factory ServerGetConfigOutput.fromJson(Map<String, Object?> json) =>
      _$ServerGetConfigOutputFromJson(json);
}

extension ServerGetConfigOutputExtension on ServerGetConfigOutput {
  bool get hasAppview => appview != null;
  bool get hasNotAppview => !hasAppview;
  bool get hasPds => pds != null;
  bool get hasNotPds => !hasPds;
  bool get hasBlobDivert => blobDivert != null;
  bool get hasNotBlobDivert => !hasBlobDivert;
  bool get hasChat => chat != null;
  bool get hasNotChat => !hasChat;
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
  bool get hasVerifierDid => verifierDid != null;
  bool get hasNotVerifierDid => !hasVerifierDid;
}

final class ServerGetConfigOutputConverter
    extends JsonConverter<ServerGetConfigOutput, Map<String, dynamic>> {
  const ServerGetConfigOutputConverter();

  @override
  ServerGetConfigOutput fromJson(Map<String, dynamic> json) {
    return ServerGetConfigOutput.fromJson(
      translate(json, ServerGetConfigOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ServerGetConfigOutput object) =>
      untranslate(object.toJson());
}
