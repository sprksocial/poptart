// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../defs/repo_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ModerationSearchReposOutput with _$ModerationSearchReposOutput {
  static const knownProps = <String>['cursor', 'repos'];

  @JsonSerializable(includeIfNull: false)
  const factory ModerationSearchReposOutput({
    String? cursor,
    @RepoViewConverter() required List<RepoView> repos,

    Map<String, dynamic>? $unknown,
  }) = _ModerationSearchReposOutput;

  factory ModerationSearchReposOutput.fromJson(Map<String, Object?> json) =>
      _$ModerationSearchReposOutputFromJson(json);
}

extension ModerationSearchReposOutputExtension on ModerationSearchReposOutput {
  bool get hasCursor => cursor != null;
  bool get hasNotCursor => !hasCursor;
}

final class ModerationSearchReposOutputConverter
    extends JsonConverter<ModerationSearchReposOutput, Map<String, dynamic>> {
  const ModerationSearchReposOutputConverter();

  @override
  ModerationSearchReposOutput fromJson(Map<String, dynamic> json) {
    return ModerationSearchReposOutput.fromJson(
      translate(json, ModerationSearchReposOutput.knownProps),
    );
  }

  @override
  Map<String, dynamic> toJson(ModerationSearchReposOutput object) =>
      untranslate(object.toJson());
}
