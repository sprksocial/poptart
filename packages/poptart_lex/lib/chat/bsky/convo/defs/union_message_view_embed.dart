// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/internals.dart' show isA;

import '../../../../app/bsky/embed/record/view.dart';

part 'union_message_view_embed.freezed.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
sealed class UMessageViewEmbed with _$UMessageViewEmbed {
  const UMessageViewEmbed._();

  const factory UMessageViewEmbed.embedRecordView({
    required EmbedRecordView data,
  }) = UMessageViewEmbedEmbedRecordView;

  const factory UMessageViewEmbed.unknown({
    required Map<String, dynamic> data,
  }) = UMessageViewEmbedUnknown;

  Map<String, dynamic> toJson() =>
      const UMessageViewEmbedConverter().toJson(this);
}

extension UMessageViewEmbedExtension on UMessageViewEmbed {
  bool get isEmbedRecordView => isA<UMessageViewEmbedEmbedRecordView>(this);
  bool get isNotEmbedRecordView => !isEmbedRecordView;
  EmbedRecordView? get embedRecordView =>
      isEmbedRecordView ? data as EmbedRecordView : null;
  bool get isUnknown => isA<UMessageViewEmbedUnknown>(this);
  bool get isNotUnknown => !isUnknown;
  Map<String, dynamic>? get unknown =>
      isUnknown ? data as Map<String, dynamic> : null;
}

final class UMessageViewEmbedConverter
    implements JsonConverter<UMessageViewEmbed, Map<String, dynamic>> {
  const UMessageViewEmbedConverter();

  @override
  UMessageViewEmbed fromJson(Map<String, dynamic> json) {
    try {
      if (EmbedRecordView.validate(json)) {
        return UMessageViewEmbed.embedRecordView(
          data: const EmbedRecordViewConverter().fromJson(json),
        );
      }

      return UMessageViewEmbed.unknown(data: json);
    } catch (_) {
      return UMessageViewEmbed.unknown(data: json);
    }
  }

  @override
  Map<String, dynamic> toJson(UMessageViewEmbed object) => object.when(
    embedRecordView: (data) => const EmbedRecordViewConverter().toJson(data),

    unknown: (data) => data,
  );
}
