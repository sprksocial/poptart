// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:poptart_core/poptart_core.dart' as core;
import 'package:poptart_core/poptart_oauth.dart' as oauth;

import '../tools_ozone_services.dart';

/// Provides `tools.ozone.*` services.
sealed class Ozone {
  factory Ozone.fromSession(
    final core.Session session, {
    final Map<String, String>? headers,
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? getClient,
    final core.PostClient? postClient,
  }) => _Ozone(
    core.ServiceContext(
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

  factory Ozone.fromOAuthSession(
    final oauth.OAuthSession session, {
    final Map<String, String>? headers,
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? getClient,
    final core.PostClient? postClient,
  }) => _Ozone(
    core.ServiceContext(
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

  factory Ozone.anonymous({
    final Map<String, String>? headers,
    final core.Protocol? protocol,
    final String? service,
    final String? relayService,
    final Duration? timeout,
    final core.RetryConfig? retryConfig,
    final core.GetClient? getClient,
    final core.PostClient? postClient,
  }) => _Ozone(
    core.ServiceContext(
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

  Map<String, String> get headers;
  core.Session? get session;
  oauth.OAuthSession? get oAuthSession;
  String get service;
  String get relayService;

  CommunicationService get communication;
  HostingService get hosting;
  ModerationService get moderation;
  SafelinkService get safelink;
  ServerService get server;
  SetService get set;
  SettingService get setting;
  SignatureService get signature;
  TeamService get team;
  VerificationService get verification;
}

final class _Ozone implements Ozone {
  _Ozone(final core.ServiceContext ctx)
    : communication = CommunicationService(ctx),
      hosting = HostingService(ctx),
      moderation = ModerationService(ctx),
      safelink = SafelinkService(ctx),
      server = ServerService(ctx),
      set = SetService(ctx),
      setting = SettingService(ctx),
      signature = SignatureService(ctx),
      team = TeamService(ctx),
      verification = VerificationService(ctx),
      _ctx = ctx;

  final core.ServiceContext _ctx;

  @override
  Map<String, String> get headers => _ctx.headers;

  @override
  core.Session? get session => _ctx.session;

  @override
  oauth.OAuthSession? get oAuthSession => _ctx.oAuthSession;

  @override
  String get service => _ctx.service;

  @override
  String get relayService => _ctx.relayService;

  @override
  final CommunicationService communication;

  @override
  final HostingService hosting;

  @override
  final ModerationService moderation;

  @override
  final SafelinkService safelink;

  @override
  final ServerService server;

  @override
  final SetService set;

  @override
  final SettingService setting;

  @override
  final SignatureService signature;

  @override
  final TeamService team;

  @override
  final VerificationService verification;
}
