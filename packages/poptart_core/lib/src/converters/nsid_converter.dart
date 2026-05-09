// Package imports:
import 'package:poptart_primitives/nsid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final class NsidConverter implements JsonConverter<NSID, String> {
  const NsidConverter();

  @override
  NSID fromJson(String json) => NSID.parse(json);

  @override
  String toJson(NSID object) => object.toString();
}
