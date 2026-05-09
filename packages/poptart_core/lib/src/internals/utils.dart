bool isA<T>(final Object? object) {
  if (object == null) return false;
  return object is T;
}

/// Returns the [dateTime] in UTC time zone and ISO8601 format.
String iso8601(final DateTime? dateTime) =>
    (dateTime ?? DateTime.now()).toUtc().toIso8601String();
