// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/poptart_atproto.dart' as atp;
import 'package:poptart_core/poptart_core.dart' as core;
import 'package:poptart_core/poptart_oauth.dart' as oauth;

const _kBskyChatProxyHeaders = <String, String>{
  'atproto-proxy': 'did:web:api.bsky.chat#bsky_chat',
};

/// Provides `chat.bsky.*` services.
sealed class BlueskyChat {
  /// Returns the new instance of [BlueskyChat].
  factory BlueskyChat.fromSession(
    final core.Session session, {
    final Map<String, String>? headers,
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? getClient,
    final core.PostClient? postClient,
  }) => _BlueskyChat(
    core.ServiceContext(
      headers: {...?headers, ..._kBskyChatProxyHeaders},
      protocol: protocol,
      service: service,
      relayService: relayService,
      session: session,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
    atp.ATProto.fromSession(
      headers: {...?headers, ..._kBskyChatProxyHeaders},
      session,
      protocol: protocol,
      service: service,
      relayService: relayService,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
  );

  /// Returns the new instance of [BlueskyChat].
  factory BlueskyChat.fromOAuthSession(
    final oauth.OAuthSession session, {
    final Map<String, String>? headers,
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? getClient,
    final core.PostClient? postClient,
  }) => _BlueskyChat(
    core.ServiceContext(
      headers: {...?headers, ..._kBskyChatProxyHeaders},
      protocol: protocol,
      service: service,
      relayService: relayService,
      oAuthSession: session,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
    atp.ATProto.fromOAuthSession(
      headers: {...?headers, ..._kBskyChatProxyHeaders},
      session,
      protocol: protocol,
      service: service,
      relayService: relayService,
      timeout: timeout,
      retryConfig: retryConfig,
      getClient: getClient,
      postClient: postClient,
    ),
  );

  /// Returns the global headers without auth header.
  Map<String, String> get headers;

  /// Returns the current session.
  ///
  /// Set only if an instance of this object was created in
  /// [BlueskyChat.fromSession], otherwise null.
  core.Session? get session;

  /// Returns atproto features.
  atp.ATProto get atproto;

  /// Returns the current service.
  /// Defaults to `bsky.social`.
  String get service;

  /// Returns the current replay service.
  /// Defaults to `bsky.network`.
  String get relayService;

  Future<core.XRPCResponse<O>> call<P, I, O>(
    final core.XRPCMethodDescriptor<P, I, O> method, {
    final String? service,
    final Map<String, String>? headers,
    final P? parameters,
    final I? input,
  });
}

final class _BlueskyChat implements BlueskyChat {
  _BlueskyChat(this._ctx, this.atproto);

  final core.ServiceContext _ctx;

  @override
  Map<String, String> get headers => _ctx.headers;

  @override
  core.Session? get session => _ctx.session;

  @override
  String get service => _ctx.service;

  @override
  String get relayService => _ctx.relayService;

  @override
  final atp.ATProto atproto;

  @override
  Future<core.XRPCResponse<O>> call<P, I, O>(
    final core.XRPCMethodDescriptor<P, I, O> method, {
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
