// Copyright (c) 2023-2025, Shinya Kato.
// All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:poptart_lexicon/parser.dart';

// Project imports:
import '../config.dart';
import '../utils.dart';
import 'object/lex_type.dart';

LexServiceRuleConfig? _config;
List<LexiconDoc> _lexiconDocs = const [];

void setLexServiceRuleConfig(final LexServiceRuleConfig config) {
  _config = config;
}

void setLexiconDocs(final List<LexiconDoc> docs) {
  _lexiconDocs = List.unmodifiable(docs);
}

bool isDeprecated(final String? description) {
  if (description == null) return false;
  return description.toLowerCase().contains('deprecated');
}

/// Ex: ActorProfileViewBasic
String getLexObjectName(
  final String lexiconId,
  final String defName,
  final List<String> mainVariants,
) {
  if (defName == 'main') {
    return _lexiconNameParts(lexiconId).map(toFirstUpperCase).join();
  }

  if (defName == 'record') {
    return _lexiconNameParts(lexiconId).map(toFirstUpperCase).join() +
        toFirstUpperCase(defName);
  }

  if (lexiconId.endsWith('defs')) {
    return toFirstUpperCase(defName);
  }

  if (mainVariants.contains(lexiconId)) {
    return _lexiconNameParts(lexiconId).map(toFirstUpperCase).join() +
        toFirstUpperCase(defName);
  }

  return toFirstUpperCase(defName);
}

/// Ex: URichtextFacetFeatures
String getLexUnionName(
  final String lexiconId,
  final String defName,
  final String fieldName,
  final List<String> mainVariants,
) {
  final objectName = getLexObjectName(lexiconId, defName, mainVariants);

  return 'U$objectName${toFirstUpperCase(fieldName)}';
}

/// Ex: profile_view_basic
String getLexObjectFileName(final String? value) {
  if (value == null) return '';
  return splitByUpperCase(value).join('_').toLowerCase();
}

/// Ex: union_richtext_facet_features
String getLexUnionFileName(final String defName) {
  if (defName.isEmpty) {
    throw ArgumentError('Definition name must not be empty');
  }

  return splitByUpperCase(defName).join('_').toLowerCase();
}

/// Ex: ActorGetPreferencesOutput
String getLexOutputObjectName(final String lexiconId) {
  final parts = lexiconId.split('.');
  final service = parts[parts.length - 2];
  final method = parts[parts.length - 1];

  return '${toFirstUpperCase(service)}${toFirstUpperCase(method)}Output';
}

/// Ex: output
String getLexOutputObjectFileName() {
  return 'output';
}

String getFilePath(
  final String lexiconId,
  final String defName,
  final LexTypeState state, {
  final String? fieldName,
}) {
  if (state == LexTypeState.input) {
    return '${getHomeDir(lexiconId)}/${_getFileDir(lexiconId)}/input.dart';
  } else if (state == LexTypeState.output) {
    return '${getHomeDir(lexiconId)}/${_getFileDir(lexiconId)}/output.dart';
  } else {
    if (fieldName != null) {
      final prefix = getLexObjectFileName(defName);
      final suffix = getLexObjectFileName(fieldName);
      final fileName = [prefix, suffix].join('_');

      return '${getHomeDir(lexiconId)}/${_getFileDir(lexiconId)}/$fileName.dart';
    } else {
      return '${getHomeDir(lexiconId)}/${_getFileDir(lexiconId)}/${getLexObjectFileName(defName)}.dart';
    }
  }
}

String getLeafEntryPointPath(final String lexiconId) {
  return '${getHomeDir(lexiconId)}/${getPublicFileDir(lexiconId)}.dart';
}

String getAggregateEntryPointPath(
  final String rootPackageName,
  final String dir,
) {
  return 'packages/$rootPackageName/lib/$dir.dart';
}

String getAggregateEntryPointPathForLexicon(
  final String lexiconId,
  final String dir,
) {
  return '${_getNamespaceRule(lexiconId).homeDir}/$dir.dart';
}

String getPublicPackagePath(final String lexiconId) {
  return 'package:${getRootPackageName(lexiconId)}/${getPublicFileDir(lexiconId)}.dart';
}

String getPublicFileDir(final String lexiconId) {
  final parts = lexiconId.split('.');
  if (parts.isEmpty) return lexiconId;

  final last = parts.removeLast();
  parts.add(_toPathSegment(last));
  return parts.join('/');
}

String getPublicParentDir(final String lexiconId) {
  final parts = getPublicFileDir(lexiconId).split('/');
  if (parts.length <= 1) return '';
  return parts.sublist(0, parts.length - 1).join('/');
}

String getMethodName(final String lexiconId) {
  return toFirstLowerCase(lexiconId.split('.').map(toFirstUpperCase).join());
}

String _toPathSegment(final String value) {
  if (value.isEmpty) return value;
  return splitByUpperCase(value).join('_').toLowerCase();
}

String getFileNameForUnion(
  final String lexiconId,
  final String? defName,
  final String fieldName,
) {
  if (fieldName.isEmpty) {
    return 'union_${getLexObjectFileName(defName)}';
  }

  final suffix = splitByUpperCase(
    fieldName,
  ).map((e) => e.toLowerCase()).join('_');

  if (defName == null) return 'union_$suffix';

  return 'union_${getLexObjectFileName(defName)}_$suffix';
}

String getFilePathForUnion(
  final String lexiconId,
  final String defName,
  final String fieldName,
) {
  final fileName = getFileNameForUnion(lexiconId, defName, fieldName);

  return '${getHomeDir(lexiconId)}/${_getFileDir(lexiconId)}/$fileName.dart';
}

String getLexObjectTypeId(final String lexiconId, final String defName) {
  if (defName == 'main') {
    return lexiconId;
  }

  return '$lexiconId#$defName';
}

String getHomeDir(final String lexiconId) {
  return _getNamespaceRule(lexiconId).homeDir;
}

String _getHomeDirForExport(final String lexiconId) {
  return _getNamespaceRule(lexiconId).exportCodegenPath;
}

String _getHomeDirForService(final String lexiconId) {
  return _getNamespaceRule(lexiconId).servicePackagePath;
}

String _getFileDir(final String lexiconId) {
  return getPublicFileDir(lexiconId);
}

String getFileDirForService(final String lexiconId) {
  return lexiconId.split('.').join('/');
}

String getLexObjectNameFromRef(
  final String lexiconId,
  final String ref,
  final List<String> mainVariants,
) {
  if (ref.startsWith('#')) {
    final defName = ref.substring(1);

    return getLexObjectName(lexiconId, defName, mainVariants);
  }

  if (ref.contains('#')) {
    final parts = ref.split('#');

    return getLexObjectName(parts[0], parts[1], mainVariants);
  }

  return getLexObjectName(ref, 'main', mainVariants);
}

String getLexObjectPackagePathFromRef(
  final String lexiconId,
  final String ref, {
  bool isUnion = false,
}) {
  final fileNamePrefix = isUnion ? 'union_' : '';
  final relativePath = getPackageRelativePath(lexiconId, ref);

  if (ref.startsWith('#')) {
    final defName = ref.substring(1);
    return '$relativePath/$fileNamePrefix${getLexObjectFileName(defName)}.dart';
  }

  if (_isInTheSamePackage(lexiconId, ref)) {
    if (ref.contains('#')) {
      final parts = ref.split('#');
      final fileName = isUnion
          ? getFileNameForUnion(parts.first, parts[1], '')
          : getLexObjectFileName(parts[1]);
      return '$relativePath/$fileName.dart';
    } else {
      return '$relativePath/$fileNamePrefix${getLexObjectFileName('main')}.dart';
    }
  } else {
    if (ref.contains('#')) {
      final $lexiconId = ref.split('#').first;
      return '$relativePath/${getPublicFileDir($lexiconId)}.dart';
    } else {
      return '$relativePath/${getPublicFileDir(ref)}.dart';
    }
  }
}

String getLexObjectPackagePathFromRefForService(
  final String lexiconId,
  final String ref,
) {
  if (ref.startsWith('#')) {
    final relativePath = _getFileDir(lexiconId);
    final defName = ref.substring(1);
    return '$relativePath/${getLexObjectFileName(defName)}.dart';
  }

  if (_isInTheSamePackage(lexiconId, ref)) {
    if (ref.contains('#')) {
      final parts = ref.split('#');
      final relativePath = _getFileDir(parts.first);
      return '$relativePath/${getLexObjectFileName(parts[1])}.dart';
    } else {
      final relativePath = _getFileDir(ref);
      return '$relativePath/${getLexObjectFileName('main')}.dart';
    }
  } else {
    if (ref.contains('#')) {
      final $lexiconId = ref.split('#').first;
      final relativePath = _getHomeDirForService($lexiconId);
      return '$relativePath/${getPackageName($lexiconId)}.dart';
    } else {
      final relativePath = _getHomeDirForService(ref);
      return '$relativePath/${getPackageName(ref)}.dart';
    }
  }
}

String getLexObjectPackagePathForUnion(
  final String lexiconId,
  final String defName,
  final String fieldName,
) {
  final fileName = getFileNameForUnion(lexiconId, defName, fieldName);

  return './$fileName.dart';
}

String getPackageRelativePath(final String lexiconId, final String ref) {
  if (ref.startsWith('#')) return '.';

  if (_isInTheSamePackage(lexiconId, ref)) {
    final refLexiconId = ref.contains('#') ? ref.split('#').first : ref;
    return _relativeDir(_getFileDir(lexiconId), _getFileDir(refLexiconId));
  } else {
    if (ref.contains('#')) {
      final lexiconId = ref.split('#').first;
      return 'package:${getRootPackageName(lexiconId)}';
    } else {
      return 'package:${getRootPackageName(ref)}';
    }
  }
}

String _relativeDir(final String fromDir, final String toDir) {
  final from = fromDir.split('/').where((e) => e.isNotEmpty).toList();
  final to = toDir.split('/').where((e) => e.isNotEmpty).toList();

  var shared = 0;
  while (shared < from.length &&
      shared < to.length &&
      from[shared] == to[shared]) {
    shared++;
  }

  final up = List.filled(from.length - shared, '..');
  final down = to.sublist(shared);
  final parts = [...up, ...down];
  return parts.isEmpty ? '.' : parts.join('/');
}

bool _isInTheSamePackage(final String lexiconId, final String ref) {
  if (ref.startsWith('#')) return true;
  final refLexiconId = ref.contains('#') ? ref.split('#').first : ref;
  return getRootPackageName(lexiconId) == getRootPackageName(refLexiconId);
}

String getRecordTypeName(final String lexiconId) {
  return _lexiconNameParts(lexiconId).map(toFirstUpperCase).join();
}

String getRootPackageName(final String lexiconId) {
  return _getNamespaceRule(lexiconId).rootPackageName;
}

String getPackageDir(final String lexiconId) {
  return _getNamespaceRule(lexiconId).packageDir;
}

LexiconNamespaceRule _getNamespaceRule(final String lexiconId) {
  final config = _config;
  if (config == null) {
    throw StateError('Lex service rule config is not set');
  }

  final matches =
      config.namespaceRules.where((rule) => rule.matches(lexiconId)).toList()
        ..sort(
          (a, b) => b.longestPrefix.length.compareTo(a.longestPrefix.length),
        );

  if (matches.isNotEmpty) return matches.first;

  throw ArgumentError('Unsupported lexicon ID: $lexiconId');
}

String getPackageName(final String lexiconId) {
  return lexiconId.split('.').join('_').toLowerCase();
}

String getServiceName(final String lexiconId) {
  return _lexiconNameParts(lexiconId).first;
}

String getServiceApiName(final String lexiconId) {
  return lexiconId.split('.').last;
}

String getLexObjectAbsolutePath(final String lexiconId, final String fileName) {
  return '${_getHomeDirForExport(lexiconId)}/${_getFileDir(lexiconId)}/$fileName.dart';
}

String getLexObjectAbsolutePathForService(
  final String lexiconId,
  final String fileName,
) {
  return '${_getHomeDirForExport(lexiconId)}/${_getFileDir(lexiconId)}/$fileName.dart';
}

String getLexKnownValuesElementName(
  final String value, {
  final String? lexiconId,
}) {
  final parts = value.split('#');
  String val = parts.last;

  if (val.startsWith('!')) {
    val = val.substring(1);
  }
  if (val.contains('-')) {
    val = val.split('-').map(toFirstUpperCase).join();
  }

  if (value.contains('#')) {
    if (value.startsWith('#')) {
      assert(lexiconId != null);

      return toFirstLowerCase(
            lexiconId!.split('.').map(toFirstUpperCase).join(),
          ) +
          toFirstUpperCase(val);
    } else {
      return toFirstLowerCase(
            parts.first.split('.').map(toFirstUpperCase).join(),
          ) +
          toFirstUpperCase(val);
    }
  }

  val = toFirstLowerCase(val);

  return val == 'default' ? 'defaultValue' : val;
}

String getNamespaceIdForApi(final String lexiconId) {
  return toFirstLowerCase(lexiconId.split('.').map(toFirstUpperCase).join());
}

List<String> _lexiconNameParts(final String lexiconId) {
  final parts = lexiconId.split('.');
  if (parts.length <= 2) return parts;
  return parts.sublist(2);
}

LexUserType? getRelatedDocFromRef(final String? ref) {
  if (ref == null) return null;
  if (ref.startsWith('#')) return null;
  if (!ref.contains('#')) return null;

  final parts = ref.split('#');
  final lexiconId = parts.first;
  final defName = parts.last;

  for (final doc in _lexiconDocs) {
    for (final def in doc.defs.entries) {
      if (doc.id.toString() == lexiconId && def.key == defName) {
        return def.value;
      }
    }
  }

  return null;
}

LexUserType? getRelatedDocFromContextualRef(
  final String lexiconId,
  final String? ref,
) {
  if (ref == null) return null;
  if (ref.startsWith('#')) return getRelatedDocFromRef('$lexiconId$ref');

  return getRelatedDocFromRef(ref);
}

String? getLexUserTypeDescription(final LexUserType type) {
  return type.whenOrNull(
    record: (data) => data.description,
    xrpcQuery: (data) => data.description,
    xrpcProcedure: (data) => data.description,
    xrpcSubscription: (data) => data.description,
    blob: (data) => data.description,
    array: (data) => data.description,
    token: (data) => data.description,
    object: (data) => data.description,
    boolean: (data) => data.description,
    integer: (data) => data.description,
    string: (data) => data.description,
    bytes: (data) => data.description,
    cidLink: (data) => data.description,
    unknown: (data) => data.description,
  );
}
