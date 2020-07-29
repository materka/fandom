// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wikia _$WikiaFromJson(Map<String, dynamic> json) {
  return Wikia(
    json['id'] as int,
    json['name'] as String,
    json['language'] as String,
    json['domain'] as String,
  );
}

Map<String, dynamic> _$WikiaToJson(Wikia instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'domain': instance.domain,
    };
