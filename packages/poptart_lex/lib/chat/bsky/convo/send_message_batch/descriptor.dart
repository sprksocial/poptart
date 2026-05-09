// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './batch_item.dart';
import './input.dart';
import './output.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final batchItemDescriptor = XRPCObjectDescriptor<BatchItem>(
  nsid: 'chat.bsky.convo.sendMessageBatch',
  defName: 'batchItem',
  fromJson: (json) =>
      const BatchItemConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BatchItemConverter().toJson,
  matches: BatchItem.validate,
);

final methodDescriptor =
    XRPCMethodDescriptor<
      EmptyData,
      ConvoSendMessageBatchInput,
      ConvoSendMessageBatchOutput
    >(
      nsid: NSID.parse('chat.bsky.convo.sendMessageBatch'),
      kind: XRPCMethodKind.procedure,
      inputFromJson: (json) => const ConvoSendMessageBatchInputConverter()
          .fromJson(json.cast<String, dynamic>()),
      inputToJson: const ConvoSendMessageBatchInputConverter().toJson,
      outputFromJson: (json) => const ConvoSendMessageBatchOutputConverter()
          .fromJson(json.cast<String, dynamic>()),
      outputToJson: const ConvoSendMessageBatchOutputConverter().toJson,
      errors: const [],
    );

final chatBskyConvoSendMessageBatch = methodDescriptor;
