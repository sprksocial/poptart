// Package imports:
import 'package:cli_launcher/cli_launcher.dart' as cli;

// Project imports:
import 'package:poptart_cli/poptart_cli.dart' as poptart;

void main(List<String> args) => cli.launchExecutable(
  args,
  cli.LaunchConfig(
    name: cli.ExecutableName('poptart', package: 'poptart_cli'),
    launchFromSelf: false,
    entrypoint: poptart.entryPoint,
  ),
);
