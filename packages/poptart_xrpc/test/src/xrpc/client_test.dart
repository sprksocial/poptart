// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:poptart_xrpc/poptart_xrpc.dart';
import 'package:test/test.dart';

void main() {
  group('XRPCClient', () {
    test('calls descriptors from any lexicon namespace', () async {
      final client = XRPCClient(
        getClient: _jsonGetClient({'ok': true}),
        postClient: _jsonPostClient({'ok': true}),
      );

      final bskyResponse = await client.call(
        _query('app.bsky.actor.getProfile'),
      );
      final ozoneResponse = await client.call(
        _procedure('tools.ozone.moderation.emitEvent'),
      );

      expect(bskyResponse.request.url.path, '/xrpc/app.bsky.actor.getProfile');
      expect(
        ozoneResponse.request.url.path,
        '/xrpc/tools.ozone.moderation.emitEvent',
      );
      expect(bskyResponse.data, {'ok': true});
      expect(ozoneResponse.data, {'ok': true});
    });
  });
}

XRPCMethodDescriptor<Map<String, dynamic>, EmptyData, Map<String, dynamic>>
_query(final String nsid) => XRPCMethodDescriptor(
  nsid: NSID.parse(nsid),
  kind: XRPCMethodKind.query,
  outputFromJson: (json) => json,
);

XRPCMethodDescriptor<EmptyData, Map<String, dynamic>, Map<String, dynamic>>
_procedure(final String nsid) => XRPCMethodDescriptor(
  nsid: NSID.parse(nsid),
  kind: XRPCMethodKind.procedure,
  outputFromJson: (json) => json,
);

GetClient _jsonGetClient(final Map<String, dynamic> json) =>
    (url, {headers}) async => http.Response.bytes(
      jsonEncode(json).codeUnits,
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
      request: http.Request('GET', url),
    );

PostClient _jsonPostClient(final Map<String, dynamic> json) =>
    (url, {headers, body, encoding}) async => http.Response.bytes(
      jsonEncode(json).codeUnits,
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
      request: http.Request('POST', url),
    );
