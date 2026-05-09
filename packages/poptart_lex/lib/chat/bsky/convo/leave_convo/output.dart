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
abstract class ConvoLeaveConvoOutput with _$ConvoLeaveConvoOutput {
  static const knownProps = <String>['convoId', 'rev'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoLeaveConvoOutput({
    required String convoId,
    required String rev,

    Map<String, dynamic>? $unknown,
  }) = _ConvoLeaveConvoOutput;

  factory ConvoLeaveConvoOutput.fromJson(Map<String, Object?> json) =>
      _$ConvoLeaveConvoOutputFromJson(json);
}

final class ConvoLeaveConvoOutputConverter
    extends JsonConverter<ConvoLeaveConvoOutput, Map<String, dynamic>> {
  const ConvoLeaveConvoOutputConverter();

  @override
  ConvoLeaveConvoOutput fromJson(Map<String, dynamic> json) {
    return ConvoLeaveConvoOutput.fromJson(
      translate(json, ConvoLeaveConvoOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoLeaveConvoOutput object) =>
      untranslate(object.toJson());
}
