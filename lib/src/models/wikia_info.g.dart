// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiaInfo _$WikiaInfoFromJson(Map<String, dynamic> json) {
  return WikiaInfo(
    json['id'] as int,
    json['name'] as String,
    json['language'] as String,
    json['domain'] as String,
  );
}

Map<String, dynamic> _$WikiaInfoToJson(WikiaInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('language', instance.language);
  writeNotNull('domain', instance.domain);
  return val;
}
