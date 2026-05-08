// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:async';
import 'dart:typed_data';

// Package imports:
import 'package:nanoid/nanoid.dart' show nanoid;
import 'package:poptart_primitives/nsid.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart' as xrpc;

// Project imports:
import '../../poptart_oauth.dart';
import '../const.dart';
import '../types/oauth_session.dart';
import '../types/session.dart';
import 'challenge.dart';
import 'retry_config.dart';
import 'retry_policy.dart';

const _appBskyVideoUploadVideo = 'app.bsky.video.uploadVideo';
const _bskyVideoService = 'video.bsky.app';

base class ServiceContext {
  ServiceContext({
    Map<String, String>? headers,
    xrpc.Protocol? protocol,
    String? service,
    String? relayService,
    this.session,
    this.oAuthSession,
    Duration? timeout,
    RetryConfig? retryConfig,
    final xrpc.GetClient? getClient,
    final xrpc.PostClient? postClient,
  }) : _headers = headers,
       _protocol = protocol ?? defaultProtocol,
       service =
           service ??
           session?.atprotoPdsEndpoint ??
           oAuthSession?.atprotoPdsEndpoint ??
           defaultService,
       relayService = relayService ?? defaultRelayService,
       _challenge = Challenge(RetryPolicy(retryConfig)),
       _timeout = timeout ?? defaultTimeout,
       _getClient = getClient,
       _postClient = postClient;

  /// The global headers without auth header.
  final Map<String, String>? _headers;

  /// The current session.
  final Session? session;

  /// The current OAuth session.
  final OAuthSession? oAuthSession;

  /// The current service.
  /// Defaults to `bsky.social`.
  final String service;

  /// The current relay service.
  /// Defaults to `bsky.network`.
  final String relayService;

  /// The communication challenge for client
  final Challenge _challenge;

  /// The timeout
  final Duration _timeout;

  /// The communication protocol.
  final xrpc.Protocol _protocol;

  final xrpc.GetClient? _getClient;
  final xrpc.PostClient? _postClient;

  Map<String, String> get headers => _headers ?? const {};

  String get repo => session?.did ?? oAuthSession?.sub ?? '';

  Future<xrpc.XRPCResponse<T>> get<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
    final xrpc.GetClient? client,
  }) async => await _challenge.execute(
    () async => await xrpc.query(
      methodId,
      protocol: _protocol,
      service: service ?? this.service,
      headers: {..._headers ?? const {}, ...headers ?? const {}},
      parameters: parameters,
      to: to,
      adaptor: adaptor,
      timeout: _timeout,
      headerBuilder: _buildAuthHeader,
      getClient: client ?? _getClient,
    ),
    onUpdateDpopNonce: _onUpdateDpopNonce,
  );

  Future<xrpc.XRPCResponse<T>> post<T>(
    final NSID methodId, {
    final String? service,
    final Map<String, String>? headers,
    final Map<String, dynamic>? parameters,
    final dynamic body,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.PostClient? client,
  }) async => await _challenge.execute(
    () async => await xrpc.procedure(
      methodId,
      protocol: _protocol,
      service: service ?? this.service,
      headers: {..._headers ?? const {}, ...headers ?? const {}},
      parameters: parameters,
      body: body,
      to: to,
      timeout: _timeout,
      headerBuilder: _buildAuthHeader,
      postClient: client ?? _postClient,
    ),
    onUpdateDpopNonce: _onUpdateDpopNonce,
  );

  Future<xrpc.XRPCResponse<O>> call<P, I, O>(
    final xrpc.XRPCMethodDescriptor<P, I, O> method, {
    final String? service,
    final Map<String, String>? headers,
    final P? parameters,
    final I? input,
  }) async {
    final requestHeaders = {..._headers ?? const {}, ...headers ?? const {}};

    if (method.nsid.toString() == _appBskyVideoUploadVideo) {
      return await _callAppBskyVideoUploadVideo(
        method,
        service: service,
        headers: requestHeaders,
        input: input,
      );
    }

    return await _challenge.execute(
      () async => await xrpc.call(
        method,
        protocol: _protocol,
        service: service ?? this.service,
        headers: requestHeaders,
        parameters: parameters,
        input: input,
        timeout: _timeout,
        headerBuilder: _buildAuthHeader,
        getClient: _getClient,
        postClient: _postClient,
      ),
      onUpdateDpopNonce: _onUpdateDpopNonce,
    );
  }

  Future<xrpc.XRPCResponse<O>> _callAppBskyVideoUploadVideo<P, I, O>(
    final xrpc.XRPCMethodDescriptor<P, I, O> method, {
    required final String? service,
    required final Map<String, String> headers,
    required final I? input,
  }) async {
    final bytes = input;
    if (bytes is! Uint8List) {
      throw ArgumentError.value(
        input,
        'input',
        'app.bsky.video.uploadVideo requires Uint8List input.',
      );
    }

    if (repo.isEmpty) {
      throw StateError(
        'app.bsky.video.uploadVideo requires an authenticated session.',
      );
    }

    return await _challenge.execute(
      () async => await xrpc.procedure<O>(
        method.nsid,
        protocol: _protocol,
        service: service ?? _bskyVideoService,
        headers: {...headers, 'Content-Length': bytes.lengthInBytes.toString()},
        parameters: {'did': repo, 'name': '${nanoid(12)}.mp4'},
        body: bytes,
        contentType: method.inputEncoding,
        timeout: _timeout,
        to: method.outputFromJson,
        headerBuilder: _buildAuthHeader,
        postClient: _postClient,
      ),
      onUpdateDpopNonce: _onUpdateDpopNonce,
    );
  }

  Future<xrpc.XRPCResponse<xrpc.Subscription<T>>> stream<T>(
    final NSID methodId, {
    final Map<String, dynamic>? parameters,
    final xrpc.ResponseDataBuilder<T>? to,
    final xrpc.ResponseDataAdaptor? adaptor,
  }) async => await _challenge.execute(
    () => xrpc.subscribe(
      methodId,
      service: relayService,
      parameters: parameters,
      to: to,
      adaptor: adaptor,
    ),
  );

  Map<String, String> _buildAuthHeader(
    final Map<String, String> header,
    final Uri endpoint,
    final String method,
  ) {
    if (session != null) {
      return {'Authorization': 'Bearer ${session!.accessJwt}', ...header};
    }

    if (oAuthSession != null) {
      final oauthSession = oAuthSession!;
      final clientId = oauthSession.clientId;

      if (clientId == null || clientId.isEmpty) {
        throw const FormatException(
          'OAuth token is missing client_id and cannot build DPoP headers.',
        );
      }

      final dPoPHeader = getDPoPHeader(
        clientId: clientId,
        endpoint: endpoint.toString(),
        method: method,
        accessToken: oauthSession.accessToken,
        dPoPNonce: oauthSession.$dPoPNonce,
        publicKey: oauthSession.$publicKey,
        privateKey: oauthSession.$privateKey,
      );

      return {
        'Authorization': 'DPoP ${oauthSession.accessToken}',
        'DPoP': dPoPHeader,
        ...header,
      };
    }

    return header;
  }

  void _onUpdateDpopNonce(final Map<String, String> headers) {
    if (headers.containsKey('dpop-nonce')) {
      oAuthSession?.$dPoPNonce = headers['dpop-nonce']!;
    }
  }
}
