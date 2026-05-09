// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../../../../app/bsky/embed/record/main.dart';

part 'union_message_input_embed.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UMessageInputEmbed with _$UMessageInputEmbed {
  const UMessageInputEmbed._();

  const factory UMessageInputEmbed.embedRecord({required EmbedRecord data}) =
      UMessageInputEmbedEmbedRecord;

  const factory UMessageInputEmbed.unknown({
    required Map<String, dynamic> data,
  }) = UMessageInputEmbedUnknown;

  Map<String, dynamic> toJson() =>
      const UMessageInputEmbedConverter().toJson(this);
}

extension UMessageInputEmbedExtension on UMessageInputEmbed {
  bool get isEmbedRecord => isA<UMessageInputEmbedEmbedRecord>(this);
  bool get isNotEmbedRecord => !isEmbedRecord;
  EmbedRecord? get embedRecord => isEmbedRecord ? data as EmbedRecord : null;
  bool get isUnknown => isA<UMessageInputEmbedUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UMessageInputEmbedConverter
    implements JsonConverter<UMessageInputEmbed, Map<String, dynamic>> {
  const UMessageInputEmbedConverter();

  @override
  UMessageInputEmbed fromJson(Map<String, dynamic> json) {
    try {
      if (EmbedRecord.validate(json)) {
        return UMessageInputEmbed.embedRecord(
          data: const EmbedRecordConverter().fromJson(json),
        );
      }

      return UMessageInputEmbed.unknown(data: json);
    } catch (_) {
      return UMessageInputEmbed.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UMessageInputEmbed object) => object.when(
    embedRecord: (data) => const EmbedRecordConverter().toJson(data),

    unknown: (data) => data,
  );
}
