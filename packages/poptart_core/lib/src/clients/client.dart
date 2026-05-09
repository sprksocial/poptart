// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_primitives/nsid.dart';
import 'package:poptart_oauth/poptart_oauth.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart' as xrpc;

// Project imports:
import '../types/session.dart';
import 'retry_config.dart';
import 'service_context.dart';

/// A single app-facing client for authenticated and anonymous XRPC calls.
///
/// The low-level descriptor transport lives in `poptart_xrpc`, while this
/// client adds AT Protocol session, OAuth, retry, DPoP, and PDS endpoint
/// handling without making callers hop through a nested transport object.
sealed class PoptartClient {
  /// Returns a new authenticated client backed by an app-password session.
  factory PoptartClient.fromSession(
    final Session session, {
    final Map<String, String>? headers,
    final xrpc.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final RetryConfig? retryConfig,
    final xrpc.GetClient? getClient,
    final xrpc.PostClient? postClient,
  }) => _PoptartClient(
    ServiceContext(
      headers: headers,
      protocol: protocol,
      service: service,
      relayService: relayService,
      session: session,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
  );

  /// Returns a new authenticated client backed by an OAuth session.
  factory PoptartClient.fromOAuthSession(
    final OAuthSession session, {
    final Map<String, String>? headers,
    final xrpc.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final RetryConfig? retryConfig,
    final xrpc.GetClient? getClient,
    final xrpc.PostClient? postClient,
  }) => _PoptartClient(
    ServiceContext(
      headers: headers,
      protocol: protocol,
      service: service,
      relayService: relayService,
      oAuthSession: session,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
  );

  /// Returns a new anonymous client.
  factory PoptartClient.anonymous({
    final Map<String, String>? headers,
    final xrpc.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final RetryConfig? retryConfig,
    final xrpc.GetClient? getClient,
    final xrpc.PostClient? postClient,
  }) => _PoptartClient(
    ServiceContext(
      headers: headers,
      protocol: protocol,
      service: service,
      relayService: relayService,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
  );

  /// Returns the global headers without auth headers.
  Map<String, String> get headers;

  /// Returns the current app-password session, when present.
  Session? get session;

  /// Returns the current OAuth session, when present.
  OAuthSession? get oAuthSession;

  /// Returns the current service.
  /// Defaults to `bsky.social`, or the PDS endpoint from the session.
  String get service;

  /// Returns the current relay service.
  /// Defaults to `bsky.network`.
  String get relayService;

  /// Executes a raw XRPC query.
  Future<xrpc.XRPCResponse<T>> get<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
  });

  /// Executes a raw XRPC procedure.
  Future<xrpc.XRPCResponse<T>> post<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final xrpc.ResponseDataBuilder<T>? to,
  });

  /// Subscribes to a raw XRPC event stream.
  Future<xrpc.XRPCResponse<xrpc.Subscription<T>>> stream<T>(
    final NSID methodId, {
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
  });

  /// Executes any generated query or procedure descriptor.
  Future<xrpc.XRPCResponse<O>> call<P, I, O>(
    final xrpc.XRPCMethodDescriptor<P, I, O> method, {
    final String? service,
    final Map<String, String>? headers,
    final P? parameters,
    final I? input,
  });
}

final class _PoptartClient implements PoptartClient {
  _PoptartClient(this._ctx);

  final ServiceContext _ctx;

  @override
  Map<String, String> get headers => _ctx.headers;

  @override
  Session? get session => _ctx.session;

  @override
  OAuthSession? get oAuthSession => _ctx.oAuthSession;

  @override
  String get service => _ctx.service;

  @override
  String get relayService => _ctx.relayService;

  @override
  Future<xrpc.XRPCResponse<T>> get<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
  }) async => await _ctx.get(
    methodId,
    service: service,
    headers: headers,
    parameters: parameters,
    to: to,
    adaptor: adaptor,
  );

  @override
  Future<xrpc.XRPCResponse<T>> post<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final xrpc.ResponseDataBuilder<T>? to,
  }) async => await _ctx.post(
    methodId,
    service: service,
    headers: headers,
    parameters: parameters,
    body: body,
    to: to,
  );

  @override
  Future<xrpc.XRPCResponse<xrpc.Subscription<T>>> stream<T>(
    final NSID methodId, {
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
  }) async => await _ctx.stream(
    methodId,
    parameters: parameters,
    to: to,
    adaptor: adaptor,
  );

  @override
  Future<xrpc.XRPCResponse<O>> call<P, I, O>(
    final xrpc.XRPCMethodDescriptor<P, I, O> method, {
    final String? service,
    final Map<String, String>? headers,
    final P? parameters,
    final I? input,
  }) async => await _ctx.call(
    method,
    service: service,
    headers: headers,
    parameters: parameters,
    input: input,
  );
}
