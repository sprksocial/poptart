// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
abstract class ServerRevokeAppPasswordInput with _$ServerRevokeAppPasswordInput {
  static const knownProps = <String>['name', ];

  @JsonSerializable(includeIfNull: false)
  const factory ServerRevokeAppPasswordInput({
    required String name,

    Map<String, dynamic>? $unknown,
  }) = _ServerRevokeAppPasswordInput;

  factory ServerRevokeAppPasswordInput.fromJson(Map<String, Object?> json) => _$ServerRevokeAppPasswordInputFromJson(json);
}



final class ServerRevokeAppPasswordInputConverter
    extends JsonConverter<ServerRevokeAppPasswordInput, Map<String, dynamic>> {
  const ServerRevokeAppPasswordInputConverter();

  @override
  ServerRevokeAppPasswordInput fromJson(Map<String, dynamic> json) {
    return ServerRevokeAppPasswordInput.fromJson(translate(
      json,
      ServerRevokeAppPasswordInput.knownProps,
    ));
  }

  @override
  Map<String, dynamic> toJson(ServerRevokeAppPasswordInput object) => untranslate(
        object.toJson(),
      );
}

