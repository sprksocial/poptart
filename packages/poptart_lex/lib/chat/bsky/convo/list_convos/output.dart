// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/convo_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ConvoListConvosOutput with _$ConvoListConvosOutput {
  static const knownProps = <String>['cursor', 'convos'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoListConvosOutput({
    String? cursor,
    @ConvoViewConverter() required List<ConvoView> convos,

    Map<String, dynamic>? $unknown,
  }) = _ConvoListConvosOutput;

  factory ConvoListConvosOutput.fromJson(Map<String, Object?> json) =>
      _$ConvoListConvosOutputFromJson(json);
}

extension ConvoListConvosOutputExtension on ConvoListConvosOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class ConvoListConvosOutputConverter
    extends JsonConverter<ConvoListConvosOutput, Map<String, dynamic>> {
  const ConvoListConvosOutputConverter();

  @override
  ConvoListConvosOutput fromJson(Map<String, dynamic> json) {
    return ConvoListConvosOutput.fromJson(
      translate(json, ConvoListConvosOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoListConvosOutput object) =>
      untranslate(object.toJson());
}
