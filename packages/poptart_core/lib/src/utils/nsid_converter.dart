// Package imports:
import 'package:poptart_primitives/nsid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final class NSIDConverter implements JsonConverter<NSID, String> {
  const NSIDConverter();

  @override
  NSID fromJson(String json) => NSID(json);

  @override
  String toJson(NSID object) => object.toString();
}
