// Package imports:
import 'package:poptart_oauth/poptart_oauth.dart';

// Project imports:
import '../utils/jwt_decoder.dart';
import 'jwt.dart';

/// Returns new [OAuthSession] based on parameters.
OAuthSession restoreOAuthSession({
  required String accessToken,
  required String refreshToken,
  String? tokenType,
  String? scope,
  DateTime? expiresAt,
  String? sub,
  String? clientId,
  String? pdsEndpoint,
  String? dPoPNonce,
  required String publicKey,
  required String privateKey,
}) {
  Jwt? jwt;

  if (scope == null || expiresAt == null || sub == null) {
    try {
      jwt = decodeJwt(accessToken);
    } catch (_) {
      throw const FormatException(
        'OAuth session restore requires scope, expiresAt, and sub when '
        'accessToken is opaque.',
      );
    }
  }

  return OAuthSession(
    accessToken: accessToken,
    refreshToken: refreshToken,
    tokenType: tokenType ?? 'DPoP',
    scope: scope ?? jwt?.scope ?? '',
    expiresAt: expiresAt ?? jwt!.exp,
    sub: sub ?? jwt!.sub,
    $clientId: clientId,
    $pdsEndpoint: _normalizeAtprotoPdsEndpoint(pdsEndpoint),
    $dPoPNonce: dPoPNonce ?? '',
    $publicKey: publicKey,
    $privateKey: privateKey,
  );
}

extension OauthSessionExtension on OAuthSession {
  /// Returns decoded [accessToken].
  Jwt get accessTokenJwt => decodeJwt(accessToken);

  /// Returns decoded [refreshToken].
  Jwt? get refreshTokenJwt {
    try {
      return decodeJwt(refreshToken);
    } catch (_) {
      return null;
    }
  }

  /// Returns the OAuth client identifier if it is present on either token.
  String? get clientId {
    if ($clientId != null) return $clientId;

    try {
      final accessTokenClientId = accessTokenJwt.clientId;
      if (accessTokenClientId != null) return accessTokenClientId;
    } catch (_) {}

    return refreshTokenJwt?.clientId;
  }

  /// Returns PDS endpoint like `porcini.us-east.host.bsky.network` dynamically
  /// based on this [OAuthSession].
  String? get atprotoPdsEndpoint {
    final pdsEndpoint = _normalizeAtprotoPdsEndpoint($pdsEndpoint);
    if (pdsEndpoint != null) return pdsEndpoint;

    try {
      return accessTokenJwt.atprotoPdsEndpoint;
    } catch (_) {
      return null;
    }
  }
}

String? _normalizeAtprotoPdsEndpoint(String? endpoint) {
  if (endpoint == null || endpoint.isEmpty) return null;
  if (endpoint.startsWith('did:web:')) {
    return endpoint.replaceFirst('did:web:', '');
  }

  final uri = Uri.tryParse(endpoint);
  if (uri != null && uri.hasScheme && uri.host.isNotEmpty) {
    return uri.host;
  }

  return endpoint;
}
