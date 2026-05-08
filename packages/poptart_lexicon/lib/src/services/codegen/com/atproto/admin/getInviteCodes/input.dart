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

import './main_sort.dart';


part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************



@freezed
abstract class AdminGetInviteCodesInput with _$AdminGetInviteCodesInput {
  static const knownProps = <String>['sort', 'limit', 'cursor', ];

  @JsonSerializable(includeIfNull: false)
  const factory AdminGetInviteCodesInput({
    @AdminGetInviteCodesSortConverter() AdminGetInviteCodesSort? sort,
@Default(100) int limit,
String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _AdminGetInviteCodesInput;

  factory AdminGetInviteCodesInput.fromJson(Map<String, Object?> json) => _$AdminGetInviteCodesInputFromJson(json);
}

extension AdminGetInviteCodesInputExtension on AdminGetInviteCodesInput {
bool get hasSort => sort != null;
bool get hasNotSort => !hasSort;
bool get hasCursor => cursor != null;
bool get hasNotCursor => !hasCursor;

}


final class AdminGetInviteCodesInputConverter
    extends JsonConverter<AdminGetInviteCodesInput, Map<String, dynamic>> {
  const AdminGetInviteCodesInputConverter();

  @override
  AdminGetInviteCodesInput fromJson(Map<String, dynamic> json) {
    return AdminGetInviteCodesInput.fromJson(translate(
      json,
      AdminGetInviteCodesInput.knownProps,
    ));
  }

  @override
  Map<String, dynamic> toJson(AdminGetInviteCodesInput object) => untranslate(
        object.toJson(),
      );
}

