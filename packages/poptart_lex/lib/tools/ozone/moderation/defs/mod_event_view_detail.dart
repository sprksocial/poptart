// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './union_mod_event_view_detail_event.dart';
import './union_mod_event_view_detail_subject.dart';
import './blob_view.dart';
import './mod_tool.dart';

part 'mod_event_view_detail.freezed.dart';
part 'mod_event_view_detail.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ModEventViewDetail with _$ModEventViewDetail {
  static const knownProps = <String>[
    'id',
    'event',
    'subject',
    'subjectBlobs',
    'createdBy',
    'createdAt',
    'modTool',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory ModEventViewDetail({
    @Default('tools.ozone.moderation.defs#modEventViewDetail') String $type,
    required int id,
    @UModEventViewDetailEventConverter()
    required UModEventViewDetailEvent event,
    @UModEventViewDetailSubjectConverter()
    required UModEventViewDetailSubject subject,
    @BlobViewConverter() required List<BlobView> subjectBlobs,
    required String createdBy,
    required DateTime createdAt,
    @ModToolConverter() ModTool? modTool,

    Map<String, dynamic>? $unknown,
  }) = _ModEventViewDetail;

  factory ModEventViewDetail.fromJson(Map<String, Object?> json) =>
      _$ModEventViewDetailFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'tools.ozone.moderation.defs#modEventViewDetail';
  }
}

extension ModEventViewDetailExtension on ModEventViewDetail {
  bool get hasModTool => modTool != null;
  bool get hasNotModTool => !hasModTool;
}

final class ModEventViewDetailConverter
    extends JsonConverter<ModEventViewDetail, Map<String, dynamic>> {
  const ModEventViewDetailConverter();

  @override
  ModEventViewDetail fromJson(Map<String, dynamic> json) {
    return ModEventViewDetail.fromJson(
      translate(json, ModEventViewDetail.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ModEventViewDetail object) =>
      untranslate(object.toJson());
}
