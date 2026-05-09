// Main PLC class
export 'package:poptart_did_plc/src/plc.dart';

// Data types (migrated from entities)
export 'package:poptart_did_plc/src/types/auditable_log.dart';
export 'package:poptart_did_plc/src/types/compatible_op_or_tombstone.dart';
export 'package:poptart_did_plc/src/types/create_operation_v1.dart';
export 'package:poptart_did_plc/src/types/did_document.dart';
export 'package:poptart_did_plc/src/types/document_data.dart';
export 'package:poptart_did_plc/src/types/exported_operation.dart';
export 'package:poptart_did_plc/src/types/instance.dart';
export 'package:poptart_did_plc/src/types/operation_log.dart';
export 'package:poptart_did_plc/src/types/operation.dart';
export 'package:poptart_did_plc/src/types/service.dart';
export 'package:poptart_did_plc/src/types/tombstone.dart';
export 'package:poptart_did_plc/src/types/verification_method.dart';

// HTTP client and response types
export 'package:poptart_did_plc/src/client/http_client.dart';
export 'package:poptart_did_plc/src/client/response.dart';
export 'package:poptart_did_plc/src/client/retry_policy.dart';

// Builders
export 'package:poptart_did_plc/src/builders/operation_builder.dart';
export 'package:poptart_did_plc/src/builders/did_builder.dart';
export 'package:poptart_did_plc/src/builders/operation_utils.dart';

// Validation
export 'package:poptart_did_plc/src/validation/operation_validator.dart';
export 'package:poptart_did_plc/src/validation/did_validator.dart';

// Cryptographic utilities
export 'package:poptart_did_plc/src/crypto/crypto.dart';

// Cache functionality
export 'package:poptart_did_plc/src/cache/cache.dart';

// Streaming functionality
export 'package:poptart_did_plc/src/streaming/streaming.dart';

// Exceptions
export 'package:poptart_did_plc/src/exceptions.dart';
