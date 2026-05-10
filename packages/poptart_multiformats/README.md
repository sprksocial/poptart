# poptart_multiformats

CID and IPFS-related multiformats helpers for Dart.

This package is small by design. It gives Poptart packages a shared CID type for
content-addressed AT Protocol data, and it is useful directly when you need to
parse, create, or serialize CID v1 values.

## Install

```sh
dart pub add poptart_multiformats
```

```dart
import 'package:poptart_multiformats/poptart_multiformats.dart';
```

## Parse A CID

```dart
import 'package:poptart_multiformats/poptart_multiformats.dart';

void main() {
  final cid = CID.parse(
    'bafkreicks4diafps5lz5hjf5lflqbxkhevgdty4k66inqtw4brjyqcr6ou',
  );

  print(cid.codec);
  print(cid.toJson());
}
```

## Create A CID

```dart
import 'package:poptart_multiformats/poptart_multiformats.dart';

void main() {
  final cid = CID.create('fresh record bytes');

  print(cid.toString());
  print(cid.bytes.length);
}
```

## JSON Round Trip

```dart
import 'package:poptart_multiformats/poptart_multiformats.dart';

void main() {
  final original = CID.create('toast');
  final restored = CID.fromJson(original.toJson());

  print(original == restored); // true
}
```

Supported CIDs are CID v1 values encoded as base32 with SHA-256 multihashes and
the supported DAG codecs exposed by `Multicodec`.
