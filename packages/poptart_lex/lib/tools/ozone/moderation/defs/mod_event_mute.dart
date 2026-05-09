// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'mod_event_mute.freezed.dart';
part 'mod_event_mute.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

/// Mute incoming reports on a subject
@freezed
abstract class ModEventMute with _$ModEventMute {
  static const knownProps = <String>['comment', 'durationInHours'];

  @JsonSerializable(includeIfNull: false)
  const factory ModEventMute({
    @Default('tools.ozone.moderation.defs#modEventMute') String $type,
    String? comment,

    /// Indicates how long the subject should remain muted.
    required int durationInHours,

    Map<String, dynamic>? $unknown,
  }) = _ModEventMute;

  factory ModEventMute.fromJson(Map<String, Object?> json) =>
      _$ModEventMuteFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#modEventMute';
  }
}

extension ModEventMuteExtension on ModEventMute {
  bool get hasComment => comment != null;
  bool get hasNotComment => !hasComment;
}

final class ModEventMuteConverter
    extends JsonConverter<ModEventMute, Map<String, dynamic>> {
  const ModEventMuteConverter();

  @override
  ModEventMute fromJson(Map<String, dynamic> json) {
    return ModEventMute.fromJson(translate(json, ModEventMute.knownProps));
  }

  @override
  Map<String, dynamic> toJson(ModEventMute object) =>
      untranslate(object.toJson());
}
