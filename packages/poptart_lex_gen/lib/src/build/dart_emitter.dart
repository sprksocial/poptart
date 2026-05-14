// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart imports:
import 'dart:io';

// Project imports:
import 'generated_file.dart';

final class DartEmitter {
  const DartEmitter();

  void emit(final Iterable<GeneratedFile> files) {
    final seen = <String>{};

    for (final file in files) {
      if (!seen.add(file.path)) {
        throw StateError('Duplicate generated file path: ${file.path}');
      }

      File(file.path)
        ..createSync(recursive: true)
        ..writeAsStringSync(file.content);
    }
  }
}
