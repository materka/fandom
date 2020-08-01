// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wikia _$WikiaFromJson(Map<String, dynamic> json) {
  return Wikia(
    json['name'] as String,
    json['domain'] as String,
    json['id'] as String,
    json['language'] as String,
    json['hub'] as String,
    json['topic'] as String,
  );
}

Map<String, dynamic> _$WikiaToJson(Wikia instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('domain', instance.domain);
  writeNotNull('id', instance.id);
  writeNotNull('language', instance.language);
  writeNotNull('hub', instance.hub);
  writeNotNull('topic', instance.topic);
  return val;
}
