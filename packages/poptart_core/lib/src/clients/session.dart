// Package imports:
import 'package:poptart_primitives/nsid.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart' as xrpc;

// Project imports:
import '../types/session.dart';
import 'retry_config.dart';
import 'service_context.dart';

final _createSession = NSID.parse('com.atproto.server.createSession');
final _refreshSession = NSID.parse('com.atproto.server.refreshSession');
final _deleteSession = NSID.parse('com.atproto.server.deleteSession');

/// Creates an app-password session.
Future<xrpc.XRPCResponse<Session>> createSession({
  required String identifier,
  required String password,
  String? authFactorToken,
  xrpc.Protocol? protocol,
  String? service,
  RetryConfig? retryConfig,
  xrpc.PostClient? client,
}) async =>
    await ServiceContext(
      protocol: protocol,
      service: service,
      retryConfig: retryConfig,
      postClient: client,
    ).post(
      _createSession,
      body: {
        'identifier': identifier,
        'password': password,
        'authFactorToken': authFactorToken,
      },
      to: Session.fromJson,
    );

/// Refreshes an app-password session.
Future<xrpc.XRPCResponse<Session>> refreshSession({
  required String refreshJwt,
  xrpc.Protocol? protocol,
  String? service,
  RetryConfig? retryConfig,
  xrpc.PostClient? client,
}) async =>
    await ServiceContext(
      protocol: protocol,
      service: service,
      retryConfig: retryConfig,
      postClient: client,
    ).post(
      _refreshSession,
      headers: {'Authorization': 'Bearer $refreshJwt'},
      to: Session.fromJson,
    );

/// Deletes an app-password session.
Future<xrpc.XRPCResponse<xrpc.EmptyData>> deleteSession({
  xrpc.Protocol? protocol,
  String? service,
  required String refreshJwt,
  RetryConfig? retryConfig,
  xrpc.PostClient? client,
}) async => await ServiceContext(
  protocol: protocol,
  service: service,
  retryConfig: retryConfig,
  postClient: client,
).post(_deleteSession, headers: {'Authorization': 'Bearer $refreshJwt'});
