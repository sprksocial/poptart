// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './external.dart';
import './main.dart';
import './view.dart';
import './view_external.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final embedExternalDescriptor = XRPCObjectDescriptor<EmbedExternal>(
  nsid: 'app.bsky.embed.external',
  defName: 'main',
  fromJson: (json) =>
      const EmbedExternalConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedExternalConverter().toJson,
  matches: EmbedExternal.validate,
);

final embedExternalExternalDescriptor =
    XRPCObjectDescriptor<EmbedExternalExternal>(
      nsid: 'app.bsky.embed.external',
      defName: 'external',
      fromJson: (json) => const EmbedExternalExternalConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const EmbedExternalExternalConverter().toJson,
      matches: EmbedExternalExternal.validate,
    );

final embedExternalViewDescriptor = XRPCObjectDescriptor<EmbedExternalView>(
  nsid: 'app.bsky.embed.external',
  defName: 'view',
  fromJson: (json) =>
      const EmbedExternalViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const EmbedExternalViewConverter().toJson,
  matches: EmbedExternalView.validate,
);

final embedExternalViewExternalDescriptor =
    XRPCObjectDescriptor<EmbedExternalViewExternal>(
      nsid: 'app.bsky.embed.external',
      defName: 'viewExternal',
      fromJson: (json) => const EmbedExternalViewExternalConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const EmbedExternalViewExternalConverter().toJson,
      matches: EmbedExternalViewExternal.validate,
    );
