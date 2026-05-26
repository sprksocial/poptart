// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:poptart_core/poptart_core.dart';

void main() {
  group('restoreOAuthSession', () {
    test('restores opaque OAuth tokens from persisted token metadata', () {
      final expiresAt = DateTime.utc(2026, 1, 1);

      final session = restoreOAuthSession(
        accessToken: 'opaque-access-token',
        refreshToken: 'opaque-refresh-token',
        tokenType: 'DPoP',
        scope: 'atproto transition:generic',
        expiresAt: expiresAt,
        sub: 'did:plc:account',
        clientId: 'https://example.com/oauth/client-metadata.json',
        pdsEndpoint: 'https://cirrus.knotbin.net',
        dPoPNonce: 'nonce',
        publicKey: 'public-key',
        privateKey: 'private-key',
      );

      expect(session.accessToken, 'opaque-access-token');
      expect(session.refreshToken, 'opaque-refresh-token');
      expect(session.tokenType, 'DPoP');
      expect(session.scope, 'atproto transition:generic');
      expect(session.expiresAt, expiresAt);
      expect(session.sub, 'did:plc:account');
      expect(
        session.clientId,
        'https://example.com/oauth/client-metadata.json',
      );
      expect(session.atprotoPdsEndpoint, 'cirrus.knotbin.net');
    });

    test('uses persisted PDS endpoint for restored opaque OAuth sessions', () {
      final session = restoreOAuthSession(
        accessToken: 'opaque-access-token',
        refreshToken: 'opaque-refresh-token',
        tokenType: 'DPoP',
        scope: 'atproto',
        expiresAt: DateTime.utc(2026, 1, 1),
        sub: 'did:plc:account',
        clientId: 'https://example.com/oauth/client-metadata.json',
        pdsEndpoint: 'cirrus.knotbin.net',
        publicKey: 'public-key',
        privateKey: 'private-key',
      );

      expect(session.atprotoPdsEndpoint, 'cirrus.knotbin.net');
      expect(
        PoptartClient.fromOAuthSession(session).service,
        'cirrus.knotbin.net',
      );
    });

    test(
      'throws a helpful error for opaque tokens without persisted metadata',
      () {
        expect(
          () => restoreOAuthSession(
            accessToken: 'opaque-access-token',
            refreshToken: 'opaque-refresh-token',
            publicKey: 'public-key',
            privateKey: 'private-key',
          ),
          throwsA(
            isA<FormatException>().having(
              (error) => error.message,
              'message',
              contains('accessToken is opaque'),
            ),
          ),
        );
      },
    );

    test(
      'reads client ID from refresh JWT when the access token is opaque',
      () {
        final session = restoreOAuthSession(
          accessToken: 'opaque-access-token',
          refreshToken: _jwt({
            'sub': 'did:plc:account',
            'client_id': 'https://example.com/oauth/client-metadata.json',
            'exp': 1893456000,
            'iat': 1893452400,
          }),
          scope: 'atproto',
          expiresAt: DateTime.utc(2026, 1, 1),
          sub: 'did:plc:account',
          publicKey: 'public-key',
          privateKey: 'private-key',
        );

        expect(
          session.clientId,
          'https://example.com/oauth/client-metadata.json',
        );
      },
    );

    test('returns null client ID when opaque tokens do not include one', () {
      final session = restoreOAuthSession(
        accessToken: 'opaque-access-token',
        refreshToken: 'opaque-refresh-token',
        scope: 'atproto',
        expiresAt: DateTime.utc(2026, 1, 1),
        sub: 'did:plc:account',
        publicKey: 'public-key',
        privateKey: 'private-key',
      );

      expect(session.clientId, isNull);
    });
  });
}

String _jwt(Map<String, Object?> payload) {
  final encodedPayload = base64Url
      .encode(utf8.encode(jsonEncode(payload)))
      .replaceAll('=', '');

  return 'header.$encodedPayload.signature';
}
