// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import 'doc_loader.dart';

typedef LexiconDocsProvider = List<LexiconDoc> Function();

LexiconDocsProvider lexiconDocsProviderFromPaths(
  final List<String> paths, {
  bool recursive = true,
}) {
  return () => loadLexiconDocsFromPaths(paths, recursive: recursive);
}

final class LexiconNamespaceRule {
  final List<String> prefixes;
  final String homeDir;
  final String exportCodegenPath;
  final String servicePackagePath;
  final String rootPackageName;

  const LexiconNamespaceRule({
    required this.prefixes,
    required this.homeDir,
    required this.exportCodegenPath,
    required this.servicePackagePath,
    required this.rootPackageName,
  });

  bool matches(final String lexiconId) {
    for (final prefix in prefixes) {
      final normalized = _normalizePrefix(prefix);
      if (lexiconId == normalized || lexiconId.startsWith('$normalized.')) {
        return true;
      }
    }

    return false;
  }

  String get longestPrefix => prefixes.fold<String>('', (current, prefix) {
    final normalized = _normalizePrefix(prefix);
    return normalized.length > current.length ? normalized : current;
  });

  String _normalizePrefix(final String prefix) {
    return prefix.endsWith('.')
        ? prefix.substring(0, prefix.length - 1)
        : prefix;
  }
}

base class LexServiceRuleConfig {
  final List<LexiconNamespaceRule> namespaceRules;

  const LexServiceRuleConfig({required this.namespaceRules});
}

base class LexCommandRuleConfig {
  final String homeDir;

  const LexCommandRuleConfig({required this.homeDir});
}

base class LexGenConfig {
  final List<String> services;
  final List<String> packages;
  final LexiconDocsProvider docsProvider;
  final LexServiceRuleConfig serviceRuleConfig;
  final LexCommandRuleConfig? commandRuleConfig;

  const LexGenConfig({
    required this.services,
    required this.packages,
    required this.docsProvider,
    required this.serviceRuleConfig,
    this.commandRuleConfig,
  });
}
