// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/message_input.dart';

part 'batch_item.freezed.dart';
part 'batch_item.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class BatchItem with _$BatchItem {
  static const knownProps = <String>['convoId', 'message'];

  @JsonSerializable(includeIfNull: false)
  const factory BatchItem({
    @Default('chat.bsky.convo.sendMessageBatch#batchItem') String $type,
    required String convoId,
    @MessageInputConverter() required MessageInput message,

    Map<String, dynamic>? $unknown,
  }) = _BatchItem;

  factory BatchItem.fromJson(Map<String, Object?> json) =>
      _$BatchItemFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'chat.bsky.convo.sendMessageBatch#batchItem';
  }
}

final class BatchItemConverter
    extends JsonConverter<BatchItem, Map<String, dynamic>> {
  const BatchItemConverter();

  @override
  BatchItem fromJson(Map<String, dynamic> json) {
    return BatchItem.fromJson(translate(json, BatchItem.knownProps));
  }

  @override
  Map<String, dynamic> toJson(BatchItem object) => untranslate(object.toJson());
}
