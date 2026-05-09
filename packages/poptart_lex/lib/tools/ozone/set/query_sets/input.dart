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
abstract class SetQuerySetsInput with _$SetQuerySetsInput {
  static const knownProps = <String>[
    'limit',
    'cursor',
    'namePrefix',
    'sortBy',
    'sortDirection',
  ];

  @JsonSerializable(includeIfNull: false)
  const factory SetQuerySetsInput({
    @Default(50) int limit,
    String? cursor,
    String? namePrefix,
    @Default('name') String sortBy,

    /// Defaults to ascending order of name field.
    @Default('asc') String sortDirection,

    Map<String, dynamic>? $unknown,
  }) = _SetQuerySetsInput;

  factory SetQuerySetsInput.fromJson(Map<String, Object?> json) =>
      _$SetQuerySetsInputFromJson(json);
}

extension SetQuerySetsInputExtension on SetQuerySetsInput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
  bool get hasNamePrefix => namePrefix != null;
  bool get hasNotNamePrefix => !hasNamePrefix;
}

final class SetQuerySetsInputConverter
    extends JsonConverter<SetQuerySetsInput, Map<String, dynamic>> {
  const SetQuerySetsInputConverter();

  @override
  SetQuerySetsInput fromJson(Map<String, dynamic> json) {
    return SetQuerySetsInput.fromJson(
      translate(json, SetQuerySetsInput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(SetQuerySetsInput object) =>
      untranslate(object.toJson());
}
