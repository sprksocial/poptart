// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/reporter_stats.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ModerationGetReporterStatsOutput
    with _$ModerationGetReporterStatsOutput {
  static const knownProps = <String>['stats'];

  @JsonSerializable(includeIfNull: false)
  const factory ModerationGetReporterStatsOutput({
    @ReporterStatsConverter() required List<ReporterStats> stats,

    Map<String, dynamic>? $unknown,
  }) = _ModerationGetReporterStatsOutput;

  factory ModerationGetReporterStatsOutput.fromJson(
    Map<String, Object?> json,
  ) => _$ModerationGetReporterStatsOutputFromJson(json);
}

final class ModerationGetReporterStatsOutputConverter
    extends
        JsonConverter<ModerationGetReporterStatsOutput, Map<String, dynamic>> {
  const ModerationGetReporterStatsOutputConverter();

  @override
  ModerationGetReporterStatsOutput fromJson(Map<String, dynamic> json) {
    return ModerationGetReporterStatsOutput.fromJson(
      translate(json, ModerationGetReporterStatsOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ModerationGetReporterStatsOutput object) =>
      untranslate(object.toJson());
}
