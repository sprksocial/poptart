// Package imports:
import 'package:poptart_lexicon/parser.dart' as lex;

// Project imports:
import '../object/lex_union.dart';
import '../rule.dart' as rule;

LexUnion generateLexUnion(
  final lex.NSID lexiconId,
  final String defName,
  final String fieldName,
  final lex.LexRefUnion refUnion,
  final List<String> mainVariants,
) {
  return _LexUnionGenerator(
    lexiconId,
    defName,
    fieldName,
    refUnion,
    mainVariants,
  ).execute();
}

final class _LexUnionGenerator {
  final lex.NSID lexiconId;
  final String defName;
  final String fieldName;
  final lex.LexRefUnion refUnion;
  final List<String> mainVariants;

  _LexUnionGenerator(
    this.lexiconId,
    this.defName,
    this.fieldName,
    this.refUnion,
    this.mainVariants,
  );

  LexUnion execute() {
    final refs = refUnion.refs!.where((ref) {
      final relatedDoc = rule.getRelatedDocFromContextualRef(
        lexiconId.toString(),
        ref,
      );
      if (relatedDoc == null) return true;

      return !rule.isDeprecated(rule.getLexUserTypeDescription(relatedDoc));
    }).toList();

    return LexUnion(
      lexiconId: lexiconId.toString(),
      defName: defName,
      name: rule.getLexUnionName(
        lexiconId.toString(),
        defName,
        fieldName,
        mainVariants,
      ),
      fieldName: fieldName,
      refs: refs,
      mainVariants: mainVariants,
    );
  }
}
