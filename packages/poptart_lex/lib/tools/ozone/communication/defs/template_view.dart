// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'template_view.freezed.dart';
part 'template_view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class TemplateView with _$TemplateView {
  static const knownProps = <String>[
    'id',
    'name',
    'subject',
    'contentMarkdown',
    'disabled',
    'lang',
    'lastUpdatedBy',
    'createdAt',
    'updatedAt',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory TemplateView({
    @Default('tools.ozone.communication.defs#templateView') String $type,
    required String id,

    /// Name of the template.
    required String name,

    /// Content of the template, can contain markdown and variable placeholders.
    String? subject,

    /// Subject of the message, used in emails.
    required String contentMarkdown,
    required bool disabled,

    /// Message language.
    String? lang,

    /// DID of the user who last updated the template.
    required String lastUpdatedBy,
    required DateTime createdAt,
    required DateTime updatedAt,

    Map<String, dynamic>? $unknown,
  }) = _TemplateView;

  factory TemplateView.fromJson(Map<String, Object?> json) =>
      _$TemplateViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.communication.defs#templateView';
  }
}

extension TemplateViewExtension on TemplateView {
  bool get hasSubject => subject != null;
  bool get hasNotSubject => !hasSubject;
  bool get isDisabled => disabled;
  bool get isNotDisabled => !isDisabled;
  bool get hasLang => lang != null;
  bool get hasNotLang => !hasLang;
}

final class TemplateViewConverter
    extends JsonConverter<TemplateView, Map<String, dynamic>> {
  const TemplateViewConverter();

  @override
  TemplateView fromJson(Map<String, dynamic> json) {
    return TemplateView.fromJson(translate(json, TemplateView.knownProps));
  }

  @override
  Map<String, dynamic> toJson(TemplateView object) =>
      untranslate(object.toJson());
}
