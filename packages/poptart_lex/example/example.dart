import 'package:poptart_lex/com/atproto/server/create_session/input.dart'
    as create_session;
import 'package:poptart_lex/docs.dart' as docs;

void main() {
  final input = create_session.ServerCreateSessionInput(
    identifier: 'alice.example.com',
    password: 'app-password',
  );

  print(input.toJson());
  print(docs.comAtprotoServerCreateSession['id']);
}
