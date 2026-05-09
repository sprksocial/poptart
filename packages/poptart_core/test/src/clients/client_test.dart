// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_core/poptart_core.dart';
import 'package:poptart_test/poptart_test.dart';
import 'package:test/test.dart';

void main() {
  group('PoptartClient', () {
    test(
      'calls descriptors from any lexicon namespace on one object',
      () async {
        final client = PoptartClient.anonymous(
          getClient: createMockedGetClientFromJson({'ok': true}),
          postClient: createMockedPostClientFromJson({'ok': true}),
        );

        final bskyResponse = await client.call(
          _query('app.bsky.actor.getProfile'),
        );
        final ozoneResponse = await client.call(
          _procedure('tools.ozone.moderation.emitEvent'),
        );

        expect(
          bskyResponse.request.url.path,
          '/xrpc/app.bsky.actor.getProfile',
        );
        expect(
          ozoneResponse.request.url.path,
          '/xrpc/tools.ozone.moderation.emitEvent',
        );
        expect(bskyResponse.data, {'ok': true});
        expect(ozoneResponse.data, {'ok': true});
      },
    );
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
