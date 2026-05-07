// ignore_for_file: lines_longer_than_80_chars

import 'package:poptart_lexicon/core.dart';
import 'package:poptart_lexicon/app_bsky_richtext_facet.dart';
import 'package:poptart_lexicon/poptart_lexicon.dart' as bsky;
import 'package:poptart_bluesky_text/poptart_bluesky_text.dart';

Future<void> main() async {
  //! You just need to pass text to parse.
  final text = BlueskyText(
    'I speak 日本語 and English 🚀 @shinyakato.dev and @shinyakato.bsky.social. '
    'Visit 🚀 https://shinyakato.dev.',
  );

  if (text.isLengthLimitExceeded) {
    //! Let's split.
    final texts = text.split();

    for (final text in texts) {
      print(text.handles);
      print(text.links);
      print(text.entities);
    }
  } else {
    // [{type: handle, value: @shinyakato.dev, indices: {start: 35, end: 50}},
    // {type: handle, value: @shinyakato.bsky.social, indices: {start: 55, end: 78}}]
    print(text.handles);

    // [{type: link, value: https://shinyakato.dev, indices: {start: 91, end: 113}}]
    print(text.links);

    // [{type: handle, value: @shinyakato.dev, indices: {start: 35, end: 50}},
    // {type: handle, value: @shinyakato.bsky.social, indices: {start: 55, end: 78}},
    // {type: link, value: https://shinyakato.dev, indices: {start: 91, end: 113}}]
    print(text.entities);

    //! And you can easily integrate with bluesky package!
    final bluesky = bsky.Bluesky.fromSession(await _session);
    final facets = await text.entities.toFacets();

    await bluesky.feed.post.create(
      text: text.value,
      facets: facets.map(RichtextFacet.fromJson).toList(),
    );
  }
}

Future<Session> get _session async {
  final session = await bsky.createSession(
    service: 'SERVICE_NAME', //! The default is `bsky.social`
    identifier: 'YOUR_HANDLE_OR_EMAIL', //! Like `shinyakato.bsky.social`
    password: 'YOUR_PASSWORD',
  );

  return session.data;
}
