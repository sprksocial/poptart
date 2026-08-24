// Copyright (c) 2023-2026, Shinya Kato and Poptart contributors.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/parser.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:poptart_lex_gen/src/config.dart';
import 'package:poptart_lex_gen/src/services/fmt/lex_xrpc_procedure_generator.dart';
import 'package:poptart_lex_gen/src/services/lex_descriptor_generator.dart';
import 'package:poptart_lex_gen/src/services/object/lex_type.dart';
import 'package:poptart_lex_gen/src/services/rule.dart' as rule;

void main() {
  test('generates procedure parameters separately from a binary body', () {
    final doc = LexiconDoc.fromJson({
      'lexicon': 1,
      'id': 'com.example.uploadPart',
      'defs': {
        'main': {
          'type': 'procedure',
          'parameters': {
            'type': 'params',
            'required': ['jobId', 'partNumber'],
            'properties': {
              'jobId': {'type': 'string'},
              'partNumber': {'type': 'integer'},
            },
          },
          'input': {'encoding': 'application/octet-stream'},
          'output': {
            'encoding': 'application/json',
            'schema': {
              'type': 'object',
              'required': ['sizeBytes'],
              'properties': {
                'sizeBytes': {'type': 'integer'},
              },
            },
          },
        },
      },
    });
    final procedure = doc.defs['main']!.data as LexXrpcProcedure;

    rule.setLexServiceRuleConfig(
      const LexServiceRuleConfig(
        namespaceRules: [
          LexiconNamespaceRule(
            prefixes: ['com.example.'],
            homeDir: 'lib',
            exportCodegenPath: '',
            servicePackagePath: '',
            rootPackageName: 'example',
          ),
        ],
      ),
    );

    final generated = generateLexXrpcProcedure(
      doc.id,
      'main',
      procedure,
      const [],
    )!;

    expect(generated.parameters!.state, LexTypeState.parameters);
    expect(generated.parameters!.getFileName(), 'parameters');
    expect(generated.parameters!.getTypeName(), 'UploadPartParameters');
    expect(
      generated.parameters!.getProperties().map((property) => property.name),
      ['jobId', 'partNumber'],
    );
    expect(
      generated.parameters!.getProperties().map(
        (property) => property.isRequired,
      ),
      everyElement(isTrue),
    );
    expect(generated.input!.isBytes(), isTrue);

    final descriptor = generateLexDescriptors(
      const ['com.example.'],
      [generated.parameters!, generated.input!, generated.output!],
      [doc],
    ).single.content;

    expect(
      descriptor,
      contains(
        'XRPCMethodDescriptor<UploadPartParameters, Uint8List, '
        'UploadPartOutput>',
      ),
    );
    expect(descriptor, contains("import './parameters.dart';"));
    expect(descriptor, contains('parametersFromJson:'));
    expect(
      descriptor,
      contains(
        'parametersToJson: const UploadPartParametersConverter().toJson',
      ),
    );
    expect(descriptor, contains("inputEncoding: 'application/octet-stream'"));
  });

  test('names nested procedure types by their structural role', () {
    final doc = LexiconDoc.fromJson({
      'lexicon': 1,
      'id': 'com.example.uploadPart',
      'defs': {
        'main': {
          'type': 'procedure',
          'parameters': {
            'type': 'params',
            'required': ['format'],
            'properties': {
              'format': {
                'type': 'string',
                'knownValues': ['parameter'],
              },
            },
          },
          'input': {
            'encoding': 'application/json',
            'schema': {
              'type': 'object',
              'required': ['parametersFormat'],
              'properties': {
                'parametersFormat': {
                  'type': 'string',
                  'knownValues': ['body'],
                },
              },
            },
          },
          'output': {
            'encoding': 'application/json',
            'schema': {
              'type': 'object',
              'required': ['parametersFormat'],
              'properties': {
                'parametersFormat': {
                  'type': 'string',
                  'knownValues': ['output'],
                },
              },
            },
          },
        },
      },
    });
    final procedure = doc.defs['main']!.data as LexXrpcProcedure;

    rule.setLexServiceRuleConfig(
      const LexServiceRuleConfig(
        namespaceRules: [
          LexiconNamespaceRule(
            prefixes: ['com.example.'],
            homeDir: 'lib',
            exportCodegenPath: '',
            servicePackagePath: '',
            rootPackageName: 'example',
          ),
        ],
      ),
    );

    final generated = generateLexXrpcProcedure(
      doc.id,
      'main',
      procedure,
      const [],
    )!;
    final parameterType = generated.parameters!.getProperties().single.type;
    final inputType = generated.input!.getProperties().single.type;
    final outputType = generated.output!.getProperties().single.type;

    expect(parameterType.name, 'UploadPartParametersFormat');
    expect(parameterType.packagePath, './main_parameters_format.dart');
    expect(
      parameterType.knownValues!.getFilePath(),
      'lib/com/example/upload_part/main_parameters_format.dart',
    );
    expect(parameterType.knownValues!.values, ['parameter']);
    expect(
      generated.parameters!.format(),
      contains("import './main_parameters_format.dart';"),
    );
    expect(
      generated.parameters!.format(),
      contains(
        '@UploadPartParametersFormatConverter() '
        'required UploadPartParametersFormat format,',
      ),
    );

    expect(inputType.name, 'UploadPartInputParametersFormat');
    expect(inputType.packagePath, './main_input_parameters_format.dart');
    expect(
      inputType.knownValues!.getFilePath(),
      'lib/com/example/upload_part/main_input_parameters_format.dart',
    );
    expect(inputType.knownValues!.values, ['body']);
    expect(
      generated.input!.format(),
      contains("import './main_input_parameters_format.dart';"),
    );
    expect(
      generated.input!.format(),
      contains(
        '@UploadPartInputParametersFormatConverter() '
        'required UploadPartInputParametersFormat parametersFormat,',
      ),
    );

    expect(outputType.name, 'UploadPartOutputParametersFormat');
    expect(outputType.packagePath, './main_output_parameters_format.dart');
    expect(
      outputType.knownValues!.getFilePath(),
      'lib/com/example/upload_part/main_output_parameters_format.dart',
    );
    expect(outputType.knownValues!.values, ['output']);
    expect(
      generated.output!.format(),
      contains("import './main_output_parameters_format.dart';"),
    );
    expect(
      generated.output!.format(),
      contains(
        '@UploadPartOutputParametersFormatConverter() '
        'required UploadPartOutputParametersFormat parametersFormat,',
      ),
    );

    expect({
      parameterType.knownValues!.getFilePath(),
      inputType.knownValues!.getFilePath(),
      outputType.knownValues!.getFilePath(),
    }, hasLength(3));
  });
}
