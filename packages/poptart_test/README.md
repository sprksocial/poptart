# poptart_test

Shared testing helpers for Poptart workspace packages.

This package is not published. It contains small utilities for testing generated
services, XRPC clients, error handling, and fixture-backed responses across the
Poptart package family.

## Add In A Workspace Package

```yaml
dev_dependencies:
  poptart_test:
    path: ../poptart_test
```

```dart
import 'package:poptart_test/poptart_test.dart';
```

## Mock XRPC Clients

```dart
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_test/poptart_test.dart';
import 'package:test/test.dart';

void main() {
  test('uses mocked JSON', () async {
    final client = PoptartClient.anonymous(
      getClient: createMockedGetClientFromJson({'ok': true}),
    );

    final response = await client.get<Map<String, dynamic>>(
      NSID.parse('com.example.toast'),
      to: (json) => json.cast<String, dynamic>(),
    );

    expect(response.data['ok'], isTrue);
  });
}
```

## Expect Common Failures

```dart
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_test/poptart_test.dart';

void main() {
  expectUnauthorizedException(() async {
    final client = PoptartClient.anonymous(
      getClient: createMockedGetClientFromJson(
        {'error': 'Unauthorized', 'message': 'no frosting for you'},
        statusCode: 401,
      ),
    );

    await client.get(NSID.parse('com.example.toast'));
  });
}
```

## Service Runner Support

`ServiceRunner` and `testService(...)` are designed for generated service tests.
They provide a repeatable fixture pattern for:

- Successful typed responses.
- Unauthorized errors.
- Rate-limit errors.
- Internal server errors.
- Bulk endpoints returning `EmptyData`.
- Subscription smoke tests.

Use these helpers when a generated package needs the same breakfast spread of
transport assertions without rewriting mocks in every test file.
