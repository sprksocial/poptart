// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:poptart_core/poptart_core.dart' as core;
import 'package:poptart_lex/com_atproto_server_createsession.dart'
    as create_session;
import 'package:poptart_lex/com_atproto_server_deletesession.dart'
    as delete_session;
import 'package:poptart_lex/com_atproto_server_refreshsession.dart'
    as refresh_session;

/// Creates an app-password session.
Future<core.XRPCResponse<core.Session>> createSession({
  required String identifier,
  required String password,
  String? authFactorToken,
  core.Protocol? protocol,
  String? service,
  core.RetryConfig? retryConfig,
  core.PostClient? client,
}) async => _toSessionResponse(
  await core.ServiceContext(
    protocol: protocol,
    service: service,
    retryConfig: retryConfig,
    postClient: client,
  ).call(
    create_session.methodDescriptor,
    input: create_session.ServerCreateSessionInput(
      identifier: identifier,
      password: password,
      authFactorToken: authFactorToken,
    ),
  ),
);

/// Refreshes an app-password session.
Future<core.XRPCResponse<core.Session>> refreshSession({
  required String refreshJwt,
  core.Protocol? protocol,
  String? service,
  core.RetryConfig? retryConfig,
  core.PostClient? client,
}) async => _toSessionResponse(
  await core.ServiceContext(
    protocol: protocol,
    service: service,
    retryConfig: retryConfig,
    postClient: client,
  ).call(
    refresh_session.methodDescriptor,
    headers: {'Authorization': 'Bearer $refreshJwt'},
  ),
);

/// Deletes an app-password session.
Future<core.XRPCResponse<core.EmptyData>> deleteSession({
  core.Protocol? protocol,
  String? service,
  required String refreshJwt,
  core.RetryConfig? retryConfig,
  core.PostClient? client,
}) async =>
    await core.ServiceContext(
      protocol: protocol,
      service: service,
      retryConfig: retryConfig,
      postClient: client,
    ).call(
      delete_session.methodDescriptor,
      headers: {'Authorization': 'Bearer $refreshJwt'},
    );

core.XRPCResponse<core.Session> _toSessionResponse(
  final core.XRPCResponse response,
) => core.XRPCResponse(
  headers: response.headers,
  status: response.status,
  request: response.request,
  rateLimit: response.rateLimit,
  data: core.Session.fromJson(response.data.toJson()),
);
