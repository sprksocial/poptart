// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

part 'input.freezed.dart';
part 'input.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ConvoGetLogInput with _$ConvoGetLogInput {
  static const knownProps = <String>['cursor'];

  @JsonSerializable(includeIfNull: false)
  const factory ConvoGetLogInput({
    String? cursor,

    Map<String, dynamic>? $unknown,
  }) = _ConvoGetLogInput;

  factory ConvoGetLogInput.fromJson(Map<String, Object?> json) =>
      _$ConvoGetLogInputFromJson(json);
}

extension ConvoGetLogInputExtension on ConvoGetLogInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class ConvoGetLogInputConverter
    extends JsonConverter<ConvoGetLogInput, Map<String, dynamic>> {
  const ConvoGetLogInputConverter();

  @override
  ConvoGetLogInput fromJson(Map<String, dynamic> json) {
    return ConvoGetLogInput.fromJson(
      translate(json, ConvoGetLogInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ConvoGetLogInput object) =>
      untranslate(object.toJson());
}
