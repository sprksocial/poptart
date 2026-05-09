// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'mod_event_unmute.freezed.dart';
part 'mod_event_unmute.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Unmute action on a subject
@freezed
abstract class ModEventUnmute with _$ModEventUnmute {
  static const knownProps = <String>['comment'];

  @JsonSerializable(includeIfNull: false)
  const factory ModEventUnmute({
    @Default('tools.ozone.moderation.defs#modEventUnmute') String $type,

    /// Describe reasoning behind the reversal.
    String? comment,

    Map<String, dynamic>? $unknown,
  }) = _ModEventUnmute;

  factory ModEventUnmute.fromJson(Map<String, Object?> json) =>
      _$ModEventUnmuteFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#modEventUnmute';
  }
}

extension ModEventUnmuteExtension on ModEventUnmute {
  bool get hasComment => comment != null;
  bool get hasNotComment => !hasComment;
}

final class ModEventUnmuteConverter
    extends JsonConverter<ModEventUnmute, Map<String, dynamic>> {
  const ModEventUnmuteConverter();

  @override
  ModEventUnmute fromJson(Map<String, dynamic> json) {
    return ModEventUnmute.fromJson(translate(json, ModEventUnmute.knownProps));
  }

  @override
  Map<String, dynamic> toJson(ModEventUnmute object) =>
      untranslate(object.toJson());
}
