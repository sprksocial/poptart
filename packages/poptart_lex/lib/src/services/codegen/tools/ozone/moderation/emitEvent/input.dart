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

import './union_main_event.dart';
import './union_main_subject.dart';
import '../defs/mod_tool.dart';


part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************



@freezed
abstract class ModerationEmitEventInput with _$ModerationEmitEventInput {
  static const knownProps = <String>['event', 'subject', 'subjectBlobCids', 'createdBy', 'modTool', 'externalId', ];

  @JsonSerializable(includeIfNull: false)
  const factory ModerationEmitEventInput({
    @UModerationEmitEventEventConverter() required UModerationEmitEventEvent event,
@UModerationEmitEventSubjectConverter() required UModerationEmitEventSubject subject,
List<String>? subjectBlobCids,
required String createdBy,
@ModToolConverter() ModTool? modTool,
/// An optional external ID for the event, used to deduplicate events from external systems. Fails when an event of same type with the same external ID exists for the same subject.
String? externalId,

    Map<String, dynamic>? $unknown,
  }) = _ModerationEmitEventInput;

  factory ModerationEmitEventInput.fromJson(Map<String, Object?> json) => _$ModerationEmitEventInputFromJson(json);
}

extension ModerationEmitEventInputExtension on ModerationEmitEventInput {
bool get hasModTool => modTool != null;
bool get hasNotModTool => !hasModTool;
bool get hasExternalId => externalId != null;
bool get hasNotExternalId => !hasExternalId;

}


final class ModerationEmitEventInputConverter
    extends JsonConverter<ModerationEmitEventInput, Map<String, dynamic>> {
  const ModerationEmitEventInputConverter();

  @override
  ModerationEmitEventInput fromJson(Map<String, dynamic> json) {
    return ModerationEmitEventInput.fromJson(translate(
      json,
      ModerationEmitEventInput.knownProps,
    ));
  }

  @override
  Map<String, dynamic> toJson(ModerationEmitEventInput object) => untranslate(
        object.toJson(),
      );
}

