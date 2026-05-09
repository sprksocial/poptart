// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_primitives/nsid.dart';

// Project imports:
import '../const.dart';
import '../protocol.dart';
import '../subscription.dart';
import '../types.dart';
import 'xrpc.dart' as xrpc;
import 'xrpc_descriptor.dart';
import 'xrpc_response.dart';

/// A single XRPC client for any lexicon method descriptor.
///
/// Generated lexicons provide typed descriptors; the client only needs shared
/// transport and service configuration. Use [call] with any generated
/// method value or `methodDescriptor`, regardless of lexicon namespace.
final class XRPCClient {
  /// Returns a client configured for the selected service.
  const XRPCClient({
    this.headers,
    this.protocol = Protocol.https,
    this.service = defaultService,
    this.relayService = defaultRelayService,
    this.timeout = const Duration(seconds: 10),
    this.headerBuilder,
    this.getClient,
    this.postClient,
  });

  /// Headers applied to every request.
  final Map<String, String>? headers;

  /// The protocol used to build HTTP request URLs.
  final Protocol protocol;

  /// The default service host.
  final String service;

  /// The default relay service host.
  final String relayService;

  /// The request timeout.
  final Duration timeout;

  /// Builds request headers just before sending.
  final HeaderBuilder? headerBuilder;

  /// Optional GET implementation, mainly for tests.
  final GetClient? getClient;

  /// Optional POST implementation, mainly for tests.
  final PostClient? postClient;

  /// Executes a raw XRPC query.
  Future<XRPCResponse<T>> get<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final ResponseDataBuilder<T>? to,
    final ResponseDataAdaptor? adaptor,
  }) async => await xrpc.query(
    methodId,
    protocol: protocol,
    service: service ?? this.service,
    headers: {...?this.headers, ...?headers},
    parameters: parameters,
    timeout: timeout,
    to: to,
    adaptor: adaptor,
    headerBuilder: headerBuilder,
    getClient: getClient,
  );

  /// Executes a raw XRPC procedure.
  Future<XRPCResponse<T>> post<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final ResponseDataBuilder<T>? to,
  }) async => await xrpc.procedure(
    methodId,
    protocol: protocol,
    service: service ?? this.service,
    headers: {...?this.headers, ...?headers},
    parameters: parameters,
    body: body,
    timeout: timeout,
    to: to,
    headerBuilder: headerBuilder,
    postClient: postClient,
  );

  /// Subscribes to a raw XRPC event stream.
  XRPCResponse<Subscription<T>> stream<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, dynamic>? parameters,
    final ResponseDataBuilder<T>? to,
    final ResponseDataAdaptor? adaptor,
  }) => xrpc.subscribe(
    methodId,
    service: service ?? relayService,
    parameters: parameters,
    to: to,
    adaptor: adaptor,
  );

  /// Executes any generated query or procedure descriptor.
  Future<XRPCResponse<O>> call<P, I, O>(
    final XRPCMethod<P, I, O> method, {
    final String? service,
    final Map<String, String>? headers,
    final P? parameters,
    final I? input,
  }) async => await xrpc.call(
    method,
    protocol: protocol,
    service: service ?? this.service,
    headers: {...?this.headers, ...?headers},
    parameters: parameters,
    input: input,
    timeout: timeout,
    headerBuilder: headerBuilder,
    getClient: getClient,
    postClient: postClient,
  );
}
