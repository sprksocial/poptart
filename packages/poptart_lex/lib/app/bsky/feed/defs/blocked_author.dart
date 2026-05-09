// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../actor/defs/viewer_state.dart';

part 'blocked_author.freezed.dart';
part 'blocked_author.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class BlockedAuthor with _$BlockedAuthor {
  static const knownProps = <String>['did', 'viewer'];

  @JsonSerializable(includeIfNull: false)
  const factory BlockedAuthor({
    @Default('app.bsky.feed.defs#blockedAuthor') String $type,
    required String did,
    @ViewerStateConverter() ViewerState? viewer,

    Map<String, dynamic>? $unknown,
  }) = _BlockedAuthor;

  factory BlockedAuthor.fromJson(Map<String, Object?> json) =>
      _$BlockedAuthorFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#blockedAuthor';
  }
}

extension BlockedAuthorExtension on BlockedAuthor {
  bool get hasViewer => viewer != null;
  bool get hasNotViewer => !hasViewer;
}

final class BlockedAuthorConverter
    extends JsonConverter<BlockedAuthor, Map<String, dynamic>> {
  const BlockedAuthorConverter();

  @override
  BlockedAuthor fromJson(Map<String, dynamic> json) {
    return BlockedAuthor.fromJson(translate(json, BlockedAuthor.knownProps));
  }

  @override
  Map<String, dynamic> toJson(BlockedAuthor object) =>
      untranslate(object.toJson());
}
