// Copyright (c) 2023-2026, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark


import './convo_view.dart';
import './deleted_message_view.dart';
import './log_accept_convo.dart';
import './log_add_reaction.dart';
import './log_begin_convo.dart';
import './log_create_message.dart';
import './log_delete_message.dart';
import './log_leave_convo.dart';
import './log_mute_convo.dart';
import './log_read_message.dart';
import './log_remove_reaction.dart';
import './log_unmute_convo.dart';
import './message_and_reaction_view.dart';
import './message_input.dart';
import './message_ref.dart';
import './message_view.dart';
import './message_view_sender.dart';
import './reaction_view.dart';
import './reaction_view_sender.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************


final messageRefDescriptor = XRPCObjectDescriptor<MessageRef>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'messageRef',
  fromJson: (json) => const MessageRefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MessageRefConverter().toJson,
  matches: MessageRef.validate,
);

final messageInputDescriptor = XRPCObjectDescriptor<MessageInput>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'messageInput',
  fromJson: (json) => const MessageInputConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MessageInputConverter().toJson,
  matches: MessageInput.validate,
);

final messageViewDescriptor = XRPCObjectDescriptor<MessageView>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'messageView',
  fromJson: (json) => const MessageViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MessageViewConverter().toJson,
  matches: MessageView.validate,
);

final deletedMessageViewDescriptor = XRPCObjectDescriptor<DeletedMessageView>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'deletedMessageView',
  fromJson: (json) => const DeletedMessageViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DeletedMessageViewConverter().toJson,
  matches: DeletedMessageView.validate,
);

final messageViewSenderDescriptor = XRPCObjectDescriptor<MessageViewSender>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'messageViewSender',
  fromJson: (json) => const MessageViewSenderConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MessageViewSenderConverter().toJson,
  matches: MessageViewSender.validate,
);

final reactionViewDescriptor = XRPCObjectDescriptor<ReactionView>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'reactionView',
  fromJson: (json) => const ReactionViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReactionViewConverter().toJson,
  matches: ReactionView.validate,
);

final reactionViewSenderDescriptor = XRPCObjectDescriptor<ReactionViewSender>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'reactionViewSender',
  fromJson: (json) => const ReactionViewSenderConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ReactionViewSenderConverter().toJson,
  matches: ReactionViewSender.validate,
);

final messageAndReactionViewDescriptor = XRPCObjectDescriptor<MessageAndReactionView>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'messageAndReactionView',
  fromJson: (json) => const MessageAndReactionViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MessageAndReactionViewConverter().toJson,
  matches: MessageAndReactionView.validate,
);

final convoViewDescriptor = XRPCObjectDescriptor<ConvoView>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'convoView',
  fromJson: (json) => const ConvoViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ConvoViewConverter().toJson,
  matches: ConvoView.validate,
);

final logBeginConvoDescriptor = XRPCObjectDescriptor<LogBeginConvo>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logBeginConvo',
  fromJson: (json) => const LogBeginConvoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogBeginConvoConverter().toJson,
  matches: LogBeginConvo.validate,
);

final logAcceptConvoDescriptor = XRPCObjectDescriptor<LogAcceptConvo>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logAcceptConvo',
  fromJson: (json) => const LogAcceptConvoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogAcceptConvoConverter().toJson,
  matches: LogAcceptConvo.validate,
);

final logLeaveConvoDescriptor = XRPCObjectDescriptor<LogLeaveConvo>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logLeaveConvo',
  fromJson: (json) => const LogLeaveConvoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogLeaveConvoConverter().toJson,
  matches: LogLeaveConvo.validate,
);

final logMuteConvoDescriptor = XRPCObjectDescriptor<LogMuteConvo>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logMuteConvo',
  fromJson: (json) => const LogMuteConvoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogMuteConvoConverter().toJson,
  matches: LogMuteConvo.validate,
);

final logUnmuteConvoDescriptor = XRPCObjectDescriptor<LogUnmuteConvo>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logUnmuteConvo',
  fromJson: (json) => const LogUnmuteConvoConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogUnmuteConvoConverter().toJson,
  matches: LogUnmuteConvo.validate,
);

final logCreateMessageDescriptor = XRPCObjectDescriptor<LogCreateMessage>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logCreateMessage',
  fromJson: (json) => const LogCreateMessageConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogCreateMessageConverter().toJson,
  matches: LogCreateMessage.validate,
);

final logDeleteMessageDescriptor = XRPCObjectDescriptor<LogDeleteMessage>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logDeleteMessage',
  fromJson: (json) => const LogDeleteMessageConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogDeleteMessageConverter().toJson,
  matches: LogDeleteMessage.validate,
);

final logReadMessageDescriptor = XRPCObjectDescriptor<LogReadMessage>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logReadMessage',
  fromJson: (json) => const LogReadMessageConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogReadMessageConverter().toJson,
  matches: LogReadMessage.validate,
);

final logAddReactionDescriptor = XRPCObjectDescriptor<LogAddReaction>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logAddReaction',
  fromJson: (json) => const LogAddReactionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogAddReactionConverter().toJson,
  matches: LogAddReaction.validate,
);

final logRemoveReactionDescriptor = XRPCObjectDescriptor<LogRemoveReaction>(
  nsid: 'chat.bsky.convo.defs',
  defName: 'logRemoveReaction',
  fromJson: (json) => const LogRemoveReactionConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LogRemoveReactionConverter().toJson,
  matches: LogRemoveReaction.validate,
);
