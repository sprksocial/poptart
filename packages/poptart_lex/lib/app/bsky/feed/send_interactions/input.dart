// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/interaction.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class FeedSendInteractionsInput with _$FeedSendInteractionsInput {
  static const knownProps = <String>['feed', 'interactions'];

  @JsonSerializable(includeIfNull: false)
  const factory FeedSendInteractionsInput({
    @AtUriConverter() AtUri? feed,
    @InteractionConverter() required List<Interaction> interactions,

    Map<String, dynamic>? $unknown,
  }) = _FeedSendInteractionsInput;

  factory FeedSendInteractionsInput.fromJson(Map<String, Object?> json) =>
      _$FeedSendInteractionsInputFromJson(json);
}

extension FeedSendInteractionsInputExtension on FeedSendInteractionsInput {
  bool get hasFeed => feed != null;
  bool get hasNotFeed => !hasFeed;
}

final class FeedSendInteractionsInputConverter
    extends JsonConverter<FeedSendInteractionsInput, Map<String, dynamic>> {
  const FeedSendInteractionsInputConverter();

  @override
  FeedSendInteractionsInput fromJson(Map<String, dynamic> json) {
    return FeedSendInteractionsInput.fromJson(
      translate(json, FeedSendInteractionsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(FeedSendInteractionsInput object) =>
      untranslate(object.toJson());
}
