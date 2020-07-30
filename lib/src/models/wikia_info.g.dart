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

Map<String, dynamic> _$WikiaInfoToJson(WikiaInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'domain': instance.domain,
    };
