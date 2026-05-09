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
abstract class ConvoSendMessageBatchOutput with _$ConvoSendMessageBatchOutput {
  static const knownProps = <String>['items'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoSendMessageBatchOutput({
    @MessageViewConverter() required List<MessageView> items,

    Map<String, dynamic>? $unknown,
  }) = _ConvoSendMessageBatchOutput;

  factory ConvoSendMessageBatchOutput.fromJson(Map<String, Object?> json) =>
      _$ConvoSendMessageBatchOutputFromJson(json);
}

final class ConvoSendMessageBatchOutputConverter
    extends JsonConverter<ConvoSendMessageBatchOutput, Map<String, dynamic>> {
  const ConvoSendMessageBatchOutputConverter();

  @override
  ConvoSendMessageBatchOutput fromJson(Map<String, dynamic> json) {
    return ConvoSendMessageBatchOutput.fromJson(
      translate(json, ConvoSendMessageBatchOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoSendMessageBatchOutput object) =>
      untranslate(object.toJson());
}
