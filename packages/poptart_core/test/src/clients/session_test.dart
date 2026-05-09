// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:poptart_core/poptart_core.dart';
import 'package:test/test.dart';

void main() {
  test('createSession posts credentials and parses the session', () async {
    Uri? requestUrl;
    Object? requestBody;

    final response = await createSession(
      identifier: 'alice.test',
      password: 'hunter2',
      client: (url, {headers, body, encoding}) async {
        requestUrl = url;
        requestBody = body;

        return _sessionResponse(url);
      },
    );

    expect(requestUrl?.path, '/xrpc/com.atproto.server.createSession');
    expect(jsonDecode(requestBody as String), {
      'identifier': 'alice.test',
      'password': 'hunter2',
    });
    expect(response.data.did, 'did:plc:alice');
    expect(response.data.handle, 'alice.test');
  });

  test('refreshSession sends the refresh token as authorization', () async {
    Map<String, String>? requestHeaders;

    await refreshSession(
      refreshJwt: 'refresh-token',
      client: (url, {headers, body, encoding}) async {
        requestHeaders = headers;

        return _sessionResponse(url);
      },
    );

    expect(requestHeaders?['Authorization'], 'Bearer refresh-token');
  });

  test('deleteSession sends the refresh token as authorization', () async {
    Uri? requestUrl;
    Map<String, String>? requestHeaders;

    final response = await deleteSession(
      refreshJwt: 'refresh-token',
      client: (url, {headers, body, encoding}) async {
        requestUrl = url;
        requestHeaders = headers;

        return http.Response(
          '{}',
          200,
          headers: {'content-type': 'application/json'},
          request: http.Request('POST', url),
        );
      },
    );

    expect(requestUrl?.path, '/xrpc/com.atproto.server.deleteSession');
    expect(requestHeaders?['Authorization'], 'Bearer refresh-token');
    expect(response.data, isA<EmptyData>());
  });
}

http.Response _sessionResponse(final Uri url) => http.Response(
  jsonEncode({
    'did': 'did:plc:alice',
    'handle': 'alice.test',
    'accessJwt': 'access-token',
    'refreshJwt': 'refresh-token',
  }),
  200,
  headers: {'content-type': 'application/json'},
  request: http.Request('POST', url),
);
