// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:http/http.dart';
import 'package:poptart_primitives/nsid.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:poptart_xrpc/src/xrpc/xrpc.dart';
import 'package:poptart_xrpc/src/xrpc/xrpc_descriptor.dart';

void main() {
  group('XRPCObjectDescriptor', () {
    const descriptor = XRPCObjectDescriptor<_ExampleObject>(
      nsid: 'com.example.lexicon',
      defName: 'main',
      fromJson: _ExampleObject.fromJson,
      toJson: _ExampleObject.toJson,
      matches: _ExampleObject.validate,
    );

    test('parses and builds typed values', () {
      final parsed = descriptor.parse({
        r'$type': 'com.example.lexicon',
        'name': 'alice',
      });

      expect(parsed, const _ExampleObject(name: 'alice'));
      expect(descriptor.build(parsed), {
        r'$type': 'com.example.lexicon',
        'name': 'alice',
      });
    });

    test('safeParse rejects non-matching json', () {
      expect(
        descriptor.safeParse({r'$type': 'com.example.other', 'name': 'alice'}),
        isNull,
      );
      expect(
        () => descriptor.assertValid({
          r'$type': 'com.example.other',
          'name': 'alice',
        }),
        throwsFormatException,
      );
    });
  });

  group('XRPCMethodDescriptor', () {
    test(
      'query call exposes descriptor params and output conversion',
      () async {
        final descriptor =
            XRPCMethodDescriptor<_ExampleParams, void, _ExampleObject>(
              nsid: NSID.parse('com.example.getObject'),
              kind: XRPCMethodKind.query,
              parametersToJson: _ExampleParams.toJson,
              outputFromJson: _ExampleObject.fromJson,
            );

        final response = await call(
          descriptor,
          parameters: const _ExampleParams(limit: 3),
          getClient: (url, {headers}) async {
            expect(url.path, '/xrpc/com.example.getObject');
            expect(url.queryParameters, {'limit': '3'});

            return Response(
              r'{"$type":"com.example.lexicon","name":"alice"}',
              200,
              request: Request('GET', url),
            );
          },
        );

        expect(response.data, const _ExampleObject(name: 'alice'));
      },
    );

    test('procedure call exposes descriptor input conversion', () async {
      final descriptor =
          XRPCMethodDescriptor<void, _ExampleObject, _ExampleObject>(
            nsid: NSID.parse('com.example.putObject'),
            kind: XRPCMethodKind.procedure,
            inputToJson: _ExampleObject.toJson,
            outputFromJson: _ExampleObject.fromJson,
          );

      final response = await call(
        descriptor,
        input: const _ExampleObject(name: 'alice'),
        postClient: (url, {body, encoding, headers}) async {
          expect(url.path, '/xrpc/com.example.putObject');
          expect(body, r'{"$type":"com.example.lexicon","name":"alice"}');

          return Response(
            r'{"$type":"com.example.lexicon","name":"alice"}',
            200,
            request: Request('POST', url),
          );
        },
      );

      expect(response.data, const _ExampleObject(name: 'alice'));
    });

    test('procedure call preserves descriptor bytes input', () async {
      final descriptor = XRPCMethodDescriptor<void, Uint8List, _ExampleObject>(
        nsid: NSID.parse('com.example.uploadBlob'),
        kind: XRPCMethodKind.procedure,
        inputEncoding: 'application/vnd.ipld.car',
        outputFromJson: _ExampleObject.fromJson,
      );
      final bytes = Uint8List.fromList([1, 2, 3]);

      final response = await call(
        descriptor,
        input: bytes,
        postClient: (url, {body, encoding, headers}) async {
          expect(url.path, '/xrpc/com.example.uploadBlob');
          expect(body, bytes);
          expect(
            headers,
            containsPair('Content-type', 'application/vnd.ipld.car'),
          );
          expect(encoding, isNull);

          return Response(
            r'{"$type":"com.example.lexicon","name":"alice"}',
            200,
            request: Request('POST', url),
          );
        },
      );

      expect(response.data, const _ExampleObject(name: 'alice'));
    });

    test('query call preserves descriptor bytes output', () async {
      final descriptor = XRPCMethodDescriptor<_ExampleParams, void, Uint8List>(
        nsid: NSID.parse('com.example.getBlob'),
        kind: XRPCMethodKind.query,
        parametersToJson: _ExampleParams.toJson,
      );

      final response = await call(
        descriptor,
        parameters: const _ExampleParams(limit: 3),
        getClient: (url, {headers}) async {
          expect(url.path, '/xrpc/com.example.getBlob');
          expect(url.queryParameters, {'limit': '3'});

          return Response.bytes([1, 2, 3], 200, request: Request('GET', url));
        },
      );

      expect(response.data, Uint8List.fromList([1, 2, 3]));
    });
  });
}

final class _ExampleParams {
  final int limit;

  const _ExampleParams({required this.limit});

  static Map<String, dynamic> toJson(final _ExampleParams value) => {
    'limit': value.limit,
  };
}

final class _ExampleObject {
  final String name;

  const _ExampleObject({required this.name});

  static _ExampleObject fromJson(final Map<String, Object?> json) =>
      _ExampleObject(name: json['name'] as String);

  static Map<String, dynamic> toJson(final _ExampleObject value) => {
    r'$type': 'com.example.lexicon',
    'name': value.name,
  };

  static bool validate(final Map<String, dynamic> json) =>
      json[r'$type'] == 'com.example.lexicon';

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is _ExampleObject &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
