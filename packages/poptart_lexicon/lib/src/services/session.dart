// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_core/poptart_core.dart' as core;

// Project imports:
import 'codegen/com/atproto/server/createSession/descriptor.dart'
    as create_session;
import 'codegen/com/atproto/server/createSession/input.dart';
import 'codegen/com/atproto/server/deleteSession/descriptor.dart'
    as delete_session;
import 'codegen/com/atproto/server/refreshSession/descriptor.dart'
    as refresh_session;

/// https://atprotodart.com/docs/lexicons/com/atproto/server/createSession
Future<core.XRPCResponse<core.Session>> createSession({
  required String identifier,
  required String password,
  String? authFactorToken,
  String? service,
  core.RetryConfig? retryConfig,
  final core.PostClient? client,
}) async => _toSessionResponse(
  await core.ServiceContext(
    service: service,
    retryConfig: retryConfig,
    postClient: client,
  ).call(
    create_session.methodDescriptor,
    input: ServerCreateSessionInput(
      identifier: identifier,
      password: password,
      authFactorToken: authFactorToken,
    ),
  ),
);

/// https://atprotodart.com/docs/lexicons/com/atproto/server/refreshSession
Future<core.XRPCResponse<core.Session>> refreshSession({
  required String refreshJwt,
  String? service,
  core.RetryConfig? retryConfig,
  final core.PostClient? client,
}) async => _toSessionResponse(
  await core.ServiceContext(
    service: service,
    retryConfig: retryConfig,
    postClient: client,
  ).call(
    refresh_session.methodDescriptor,
    headers: {'Authorization': 'Bearer $refreshJwt'},
  ),
);

/// https://atprotodart.com/docs/lexicons/com/atproto/server/deleteSession
Future<core.XRPCResponse<core.EmptyData>> deleteSession({
  core.Protocol? protocol,
  String? service,
  required String refreshJwt,
  core.RetryConfig? retryConfig,
  final core.PostClient? client,
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
