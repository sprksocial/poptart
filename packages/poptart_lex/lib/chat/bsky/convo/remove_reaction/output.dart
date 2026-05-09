// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/message_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ConvoRemoveReactionOutput with _$ConvoRemoveReactionOutput {
  static const knownProps = <String>['message'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoRemoveReactionOutput({
    @MessageViewConverter() required MessageView message,

    Map<String, dynamic>? $unknown,
  }) = _ConvoRemoveReactionOutput;

  factory ConvoRemoveReactionOutput.fromJson(Map<String, Object?> json) =>
      _$ConvoRemoveReactionOutputFromJson(json);
}

final class ConvoRemoveReactionOutputConverter
    extends JsonConverter<ConvoRemoveReactionOutput, Map<String, dynamic>> {
  const ConvoRemoveReactionOutputConverter();

  @override
  ConvoRemoveReactionOutput fromJson(Map<String, dynamic> json) {
    return ConvoRemoveReactionOutput.fromJson(
      translate(json, ConvoRemoveReactionOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoRemoveReactionOutput object) =>
      untranslate(object.toJson());
}
