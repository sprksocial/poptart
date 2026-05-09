// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_core/internals.dart';

import '../../graph/defs/starter_pack_view.dart';

part 'output.freezed.dart';
part 'output.g.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

@freezed
abstract class UnspeccedGetOnboardingSuggestedStarterPacksOutput
    with _$UnspeccedGetOnboardingSuggestedStarterPacksOutput {
  static const knownProps = <String>['starterPacks'];

  @JsonSerializable(includeIfNull: false)
  const factory UnspeccedGetOnboardingSuggestedStarterPacksOutput({
    @StarterPackViewConverter() required List<StarterPackView> starterPacks,

    Map<String, dynamic>? $unknown,
  }) = _UnspeccedGetOnboardingSuggestedStarterPacksOutput;

  factory UnspeccedGetOnboardingSuggestedStarterPacksOutput.fromJson(
    Map<String, Object?> json,
  ) => _$UnspeccedGetOnboardingSuggestedStarterPacksOutputFromJson(json);
}

final class UnspeccedGetOnboardingSuggestedStarterPacksOutputConverter
    extends
        JsonConverter<
          UnspeccedGetOnboardingSuggestedStarterPacksOutput,
          Map<String, dynamic>
        > {
  const UnspeccedGetOnboardingSuggestedStarterPacksOutputConverter();

  @override
  UnspeccedGetOnboardingSuggestedStarterPacksOutput fromJson(
    Map<String, dynamic> json,
  ) {
    return UnspeccedGetOnboardingSuggestedStarterPacksOutput.fromJson(
      translate(
        json,
        UnspeccedGetOnboardingSuggestedStarterPacksOutput.knownProps,
      ),
    );
  }

  @override
  Map<String, dynamic> toJson(
    UnspeccedGetOnboardingSuggestedStarterPacksOutput object,
  ) => untranslate(object.toJson());
}
