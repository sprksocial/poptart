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
abstract class ConvoGetConvoForMembersOutput
    with _$ConvoGetConvoForMembersOutput {
  static const knownProps = <String>['convo'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoGetConvoForMembersOutput({
    @ConvoViewConverter() required ConvoView convo,

    Map<String, dynamic>? $unknown,
  }) = _ConvoGetConvoForMembersOutput;

  factory ConvoGetConvoForMembersOutput.fromJson(Map<String, Object?> json) =>
      _$ConvoGetConvoForMembersOutputFromJson(json);
}

final class ConvoGetConvoForMembersOutputConverter
    extends JsonConverter<ConvoGetConvoForMembersOutput, Map<String, dynamic>> {
  const ConvoGetConvoForMembersOutputConverter();

  @override
  ConvoGetConvoForMembersOutput fromJson(Map<String, dynamic> json) {
    return ConvoGetConvoForMembersOutput.fromJson(
      translate(json, ConvoGetConvoForMembersOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoGetConvoForMembersOutput object) =>
      untranslate(object.toJson());
}
