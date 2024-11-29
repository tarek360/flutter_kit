import 'package:json_annotation/json_annotation.dart';

class JSONDateTimeConverter implements JsonConverter<DateTime, String> {
  const JSONDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime value) => value.toUtc().toIso8601String();
}
