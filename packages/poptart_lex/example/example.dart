import 'package:poptart_lex/app/bsky/feed/post.dart' as feed_post;
import 'package:poptart_lex/docs.dart' as docs;

void main() {
  final post = feed_post.FeedPostRecord(
    text: 'Hello from generated lexicon types',
    createdAt: DateTime.now().toUtc(),
  );

  print(post.toJson());
  print(docs.appBskyFeedPost['id']);
}
