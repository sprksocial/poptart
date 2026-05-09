// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import './event.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class HostingGetAccountHistoryOutput
    with _$HostingGetAccountHistoryOutput {
  static const knownProps = <String>['cursor', 'events'];

  @JsonSerializable(includeIfNull: false)
  const factory HostingGetAccountHistoryOutput({
    String? cursor,
    @EventConverter() required List<Event> events,

    Map<String, dynamic>? $unknown,
  }) = _HostingGetAccountHistoryOutput;

  factory HostingGetAccountHistoryOutput.fromJson(Map<String, Object?> json) =>
      _$HostingGetAccountHistoryOutputFromJson(json);
}

extension HostingGetAccountHistoryOutputExtension
    on HostingGetAccountHistoryOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class HostingGetAccountHistoryOutputConverter
    extends
        JsonConverter<HostingGetAccountHistoryOutput, Map<String, dynamic>> {
  const HostingGetAccountHistoryOutputConverter();

  @override
  HostingGetAccountHistoryOutput fromJson(Map<String, dynamic> json) {
    return HostingGetAccountHistoryOutput.fromJson(
      translate(json, HostingGetAccountHistoryOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(HostingGetAccountHistoryOutput object) =>
      untranslate(object.toJson());
}
