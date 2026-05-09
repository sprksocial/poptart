// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_primitives/nsid.dart';

typedef XRPCJsonBuilder<T> = T Function(Map<String, Object?> json);
typedef XRPCJsonEncoder<T> = Map<String, dynamic> Function(T value);
typedef XRPCValidator<T> = bool Function(Map<String, dynamic> json);

enum XRPCMethodKind { query, procedure, subscription }

sealed class XRPCSchemaDescriptor<T> {
  const XRPCSchemaDescriptor({
    required this.nsid,
    required this.defName,
    required this.fromJson,
    required this.toJson,
    required this.matches,
  });

  final String nsid;
  final String defName;
  final XRPCJsonBuilder<T> fromJson;
  final XRPCJsonEncoder<T> toJson;
  final XRPCValidator<T> matches;

  String get id => defName == 'main' ? nsid : '$nsid#$defName';

  T parse(final Map<String, Object?> json) => fromJson(json);

  T? safeParse(final Map<String, Object?> json) {
    if (!matches(json.cast<String, dynamic>())) return null;
    return parse(json);
  }

  T assertValid(final Map<String, Object?> json) {
    final parsed = safeParse(json);
    if (parsed == null) {
      throw FormatException('Invalid $id object.');
    }

    return parsed;
  }

  bool isTypeOf(final Map<String, dynamic> json) => matches(json);

  Map<String, dynamic> build(final T value) => toJson(value);
}

final class XRPCObjectDescriptor<T> extends XRPCSchemaDescriptor<T> {
  const XRPCObjectDescriptor({
    required super.nsid,
    required super.defName,
    required super.fromJson,
    required super.toJson,
    required super.matches,
  });
}

final class XRPCRecordDescriptor<T> extends XRPCSchemaDescriptor<T> {
  const XRPCRecordDescriptor({
    required super.nsid,
    required super.defName,
    required super.fromJson,
    required super.toJson,
    required super.matches,
    required this.key,
  });

  final String key;
}

abstract interface class XRPCMethod<P, I, O> {
  XRPCMethodDescriptor<P, I, O> get methodDescriptor;
}

final class XRPCMethodDescriptor<P, I, O> implements XRPCMethod<P, I, O> {
  const XRPCMethodDescriptor({
    required this.nsid,
    required this.kind,
    this.parametersFromJson,
    this.parametersToJson,
    this.inputFromJson,
    this.inputToJson,
    this.outputFromJson,
    this.outputToJson,
    this.inputEncoding,
    this.outputEncoding,
    this.errors = const [],
  });

  final NSID nsid;
  final XRPCMethodKind kind;
  final XRPCJsonBuilder<P>? parametersFromJson;
  final XRPCJsonEncoder<P>? parametersToJson;
  final XRPCJsonBuilder<I>? inputFromJson;
  final XRPCJsonEncoder<I>? inputToJson;
  final XRPCJsonBuilder<O>? outputFromJson;
  final XRPCJsonEncoder<O>? outputToJson;
  final String? inputEncoding;
  final String? outputEncoding;
  final List<String> errors;

  @override
  XRPCMethodDescriptor<P, I, O> get methodDescriptor => this;

  bool get isQuery => kind == XRPCMethodKind.query;
  bool get isProcedure => kind == XRPCMethodKind.procedure;
  bool get isSubscription => kind == XRPCMethodKind.subscription;

  Map<String, dynamic>? encodeParameters(final P? value) {
    if (value == null) return null;
    if (parametersToJson != null) return parametersToJson!(value);
    if (value is Map<String, dynamic>) return value;

    throw ArgumentError.value(value, 'value', 'Unsupported parameters value.');
  }

  Object? encodeInput(final I? value) {
    if (value == null) return null;
    if (inputToJson != null) return inputToJson!(value);
    if (value is Map<String, dynamic>) return value;

    return value;
  }
}
