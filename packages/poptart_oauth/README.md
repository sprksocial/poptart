# poptart_oauth

AT Protocol OAuth helpers for Dart and Flutter.

This package handles client metadata loading, PAR + PKCE authorization, callback
processing, token refresh, DPoP proofs, and OAuth session types. Use it directly
when you are building an auth layer; use `poptart` when you want auth plus the
app-facing client in one import.

## Install

```sh
dart pub add poptart_oauth
```

```dart
import 'package:poptart_oauth/poptart_oauth.dart';
```

Flutter apps commonly pair this package with a browser callback helper such as
`flutter_web_auth_2` and secure storage.

## Start Authorization

```dart
import 'package:poptart_oauth/poptart_oauth.dart';

Future<(Uri, OAuthContext)> startOAuth(String handle) async {
  final metadata = await getClientMetadata(
    'https://example.com/oauth/client-metadata.json',
  );

  final oauth = OAuthClient(metadata, service: 'bsky.social');

  return oauth.authorize(handle);
}
```

Open the returned URI in the user agent and persist the returned
`OAuthContext` until the redirect comes back.

## Handle The Callback

```dart
import 'package:poptart_oauth/poptart_oauth.dart';

Future<OAuthSession> completeOAuth({
  required OAuthClient oauth,
  required OAuthContext context,
  required String callbackUrl,
}) {
  return oauth.callback(callbackUrl, context);
}
```

## Use The Session With Poptart

```dart
import 'package:poptart/poptart.dart';

PoptartClient clientFromOAuth(OAuthSession session) {
  return PoptartClient.fromOAuthSession(session);
}
```

## Refresh Tokens

```dart
import 'package:poptart_oauth/poptart_oauth.dart';

Future<OAuthSession> refresh(
  OAuthClient oauth,
  OAuthSession current,
) {
  return oauth.refresh(current);
}
```

Store OAuth sessions carefully. Access tokens, refresh tokens, DPoP nonce data,
and key material are hot filling, not decoration.
