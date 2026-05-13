// Project imports:
import 'build/lex_build_project.dart';
import 'commands/lex_command_generator.dart';
import 'commands/rule.dart' as command_rule;
import 'config.dart';
import 'utils.dart';

sealed class Gen {
  const Gen();

  void execute();
}

final class ServiceGen implements Gen {
  final LexGenConfig config;

  const ServiceGen({required this.config});

  @override
  void execute() {
    print(kLexGeneratorLogo);

    LexBuildProject.load(config).buildServices();
  }
}

final class CommandGen implements Gen {
  final LexGenConfig config;

  const CommandGen({required this.config});

  @override
  void execute() {
    final docs = config.docsProvider();
    final commandRuleConfig = config.commandRuleConfig;
    if (commandRuleConfig == null) {
      throw StateError('Command generation requires commandRuleConfig.');
    }

    command_rule.setLexCommandRuleConfig(commandRuleConfig);

    generateLexCommands(docs);
  }
}
