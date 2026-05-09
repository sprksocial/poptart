// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './view_external.dart';

part 'view.freezed.dart';
part 'view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class EmbedExternalView with _$EmbedExternalView {
  static const knownProps = <String>['external'];

  @JsonSerializable(includeIfNull: false)
  const factory EmbedExternalView({
    @Default('app.bsky.embed.external#view') String $type,
    @EmbedExternalViewExternalConverter()
    required EmbedExternalViewExternal external,

    Map<String, dynamic>? $unknown,
  }) = _EmbedExternalView;

  factory EmbedExternalView.fromJson(Map<String, Object?> json) =>
      _$EmbedExternalViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.embed.external#view';
  }
}

final class EmbedExternalViewConverter
    extends JsonConverter<EmbedExternalView, Map<String, dynamic>> {
  const EmbedExternalViewConverter();

  @override
  EmbedExternalView fromJson(Map<String, dynamic> json) {
    return EmbedExternalView.fromJson(
      translate(json, EmbedExternalView.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(EmbedExternalView object) =>
      untranslate(object.toJson());
}
