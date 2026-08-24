// Package imports:
import 'package:poptart_lexicon/parser.dart' as lex;

// Project imports:
import '../object/lex_input.dart';
import '../object/lex_output.dart';
import '../rule.dart' as rule;
import 'lex_property_generator.dart';

({LexInput? parameters, LexInput? input, LexOutput? output})?
generateLexXrpcProcedure(
  final lex.NSID lexiconId,
  final String defName,
  final lex.LexXrpcProcedure procedure,
  final List<String> mainVariants,
) {
  return _LexLexXrpcProcedureGenerator(
    lexiconId,
    defName,
    procedure,
    mainVariants,
  ).execute();
}

final class _LexLexXrpcProcedureGenerator {
  final lex.NSID lexiconId;
  final String defName;
  final lex.LexXrpcProcedure procedure;
  final List<String> mainVariants;

  _LexLexXrpcProcedureGenerator(
    this.lexiconId,
    this.defName,
    this.procedure,
    this.mainVariants,
  );

  ({LexInput? parameters, LexInput? input, LexOutput? output})? execute() {
    if (procedure.parameters == null &&
        procedure.input == null &&
        procedure.output == null) {
      return null;
    }

    return (
      parameters: _getParameters(),
      input: _getInput(),
      output: _getOutput(),
    );
  }

  LexInput? _getParameters() {
    if (procedure.parameters?.properties == null) return null;
    final parameters = procedure.parameters!;

    final properties = generateLexPropertiesFromLexXrpcParameters(
      lexiconId,
      defName,
      parameters.properties,
      parameters.requiredProperties,
      null,
      mainVariants,
      nestedTypeScope: LexNestedTypeScope.parameters,
    );
    if (properties.isEmpty) return null;

    return LexInput(
      lexiconId: lexiconId.toString(),
      defName: defName,
      name: rule.getLexObjectName(lexiconId.toString(), defName, mainVariants),
      description: parameters.description,
      properties: properties,
      isParameters: true,
    );
  }

  LexInput? _getInput() {
    final input = procedure.input;
    if (input?.schema == null && input?.encoding != null) {
      // Bytes
      return LexInput(
        lexiconId: lexiconId.toString(),
        defName: defName,
        name: '',
        properties: const [],
        bytes: true,
        encoding: input?.encoding,
      );
    }

    final object = procedure.input?.schema?.whenOrNull(object: (e) => e);
    if (object != null) {
      final properties = generateLexProperties(
        lexiconId,
        defName,
        object.properties,
        object.requiredProperties,
        object.nullableProperties,
        mainVariants,
        nestedTypeScope: LexNestedTypeScope.input,
      );
      if (properties.isEmpty) return null;

      return LexInput(
        lexiconId: lexiconId.toString(),
        defName: defName,
        name: rule.getLexObjectName(
          lexiconId.toString(),
          defName,
          mainVariants,
        ),
        description: input?.description,
        properties: properties,
        encoding: input?.encoding,
      );
    }

    final refVariant = procedure.input?.schema?.whenOrNull(
      refVariant: (data) => data,
    );
    final ref = refVariant?.whenOrNull(ref: (data) => data);
    if (ref == null) return null;

    return LexInput(
      lexiconId: lexiconId.toString(),
      defName: defName,
      name: rule.getLexObjectName(lexiconId.toString(), defName, mainVariants),
      ref: ref.ref,
      properties: const [],
      encoding: input?.encoding,
    );
  }

  LexOutput? _getOutput() {
    final object = procedure.output?.schema?.whenOrNull(object: (e) => e);

    if (object != null) {
      final properties = generateLexProperties(
        lexiconId,
        defName,
        object.properties,
        object.requiredProperties,
        object.nullableProperties,
        mainVariants,
        nestedTypeScope: LexNestedTypeScope.output,
      );
      if (properties.isEmpty) return null;

      return LexOutput(
        lexiconId: lexiconId.toString(),
        defName: defName,
        name: rule.getLexObjectName(
          lexiconId.toString(),
          defName,
          mainVariants,
        ),
        description: procedure.output?.description,
        properties: properties,
      );
    }

    final refVariant = procedure.output?.schema?.whenOrNull(
      refVariant: (data) => data,
    );
    final ref = refVariant?.whenOrNull(ref: (data) => data);
    if (ref == null) return null;

    return LexOutput(
      lexiconId: lexiconId.toString(),
      defName: defName,
      name: rule.getLexObjectName(lexiconId.toString(), defName, mainVariants),
      description: procedure.output?.description,
      ref: ref.ref,
      properties: const [],
    );
  }
}
