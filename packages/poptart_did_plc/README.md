# poptart_did_plc

Independent DID PLC Directory client for Dart and Flutter.

Use this package when you need to resolve `did:plc` documents, inspect
operation logs, stream exported operations, or perform health checks against a
PLC directory. It does not depend on the higher-level AT Protocol client
packages, so it works as a focused identity utility.

## Install

```sh
dart pub add poptart_did_plc
```

```dart
import 'package:poptart_did_plc/poptart_did_plc.dart';
```

## Resolve A DID Document

```dart
import 'package:poptart_did_plc/poptart_did_plc.dart';

Future<void> main() async {
  final plc = PLC();

  try {
    final document = await plc.getDocument(
      'did:plc:iijrtk7ocored6zuziwmqq3c',
    );

    print(document.id);
    print(document.service.length);
  } on PlcException catch (error) {
    print(error);
  }
}
```

## Inspect Operation History

```dart
import 'package:poptart_did_plc/poptart_did_plc.dart';

Future<void> main() async {
  final plc = PLC();

  final log = await plc.getOperationLog(
    'did:plc:iijrtk7ocored6zuziwmqq3c',
  );

  print(log.operations.length);
}
```

## Batch Lookups

```dart
import 'package:poptart_did_plc/poptart_did_plc.dart';

Future<void> main() async {
  final plc = PLC();

  final documents = await plc.getDocuments([
    'did:plc:iijrtk7ocored6zuziwmqq3c',
    'did:plc:ewvi7nxzyoun6zhxrhs64oiz',
  ]);

  for (final entry in documents.entries) {
    print('${entry.key}: ${entry.value.id}');
  }
}
```

## Export Operations

```dart
import 'package:poptart_did_plc/poptart_did_plc.dart';

Future<void> main() async {
  final plc = PLC();

  await for (final operation in plc.exportOpsStream(count: 100)) {
    print(operation.did);
  }
}
```

## Features

- DID document and raw document-data lookups.
- Operation logs, auditable logs, and last-operation helpers.
- Batch document retrieval.
- PLC health checks.
- Export APIs and streaming helpers for large sync jobs.
- Retry and HTTP client configuration for production services.

It is the identity pastry box: compact, purpose-built, and easy to carry into
tools that do not need the rest of the SDK.
