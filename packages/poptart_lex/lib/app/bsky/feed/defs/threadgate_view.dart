// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../graph/defs/list_view_basic.dart';

part 'threadgate_view.freezed.dart';
part 'threadgate_view.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class ThreadgateView with _$ThreadgateView {
  static const knownProps = <String>['uri', 'cid', 'record', 'lists'];

  @JsonSerializable(includeIfNull: false)
  const factory ThreadgateView({
    @Default('app.bsky.feed.defs#threadgateView') String $type,
    @AtUriConverter() AtUri? uri,
    String? cid,
    Map<String, dynamic>? record,
    @ListViewBasicConverter() List<ListViewBasic>? lists,

    Map<String, dynamic>? $unknown,
  }) = _ThreadgateView;

  factory ThreadgateView.fromJson(Map<String, Object?> json) =>
      _$ThreadgateViewFromJson(json);

  static bool validate(final Map<String, dynamic> object) {
    if (!object.containsKey('\$type')) return false;
    return object['\$type'] == 'app.bsky.feed.defs#threadgateView';
  }
}

extension ThreadgateViewExtension on ThreadgateView {
  bool get hasUri => uri != null;
  bool get hasNotUri => !hasUri;
  bool get hasCid => cid != null;
  bool get hasNotCid => !hasCid;
  bool get hasRecord => record != null;
  bool get hasNotRecord => !hasRecord;
}

final class ThreadgateViewConverter
    extends JsonConverter<ThreadgateView, Map<String, dynamic>> {
  const ThreadgateViewConverter();

  @override
  ThreadgateView fromJson(Map<String, dynamic> json) {
    return ThreadgateView.fromJson(translate(json, ThreadgateView.knownProps));
  }

  @override
  Map<String, dynamic> toJson(ThreadgateView object) =>
      untranslate(object.toJson());
}
