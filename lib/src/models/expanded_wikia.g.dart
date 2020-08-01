// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_wikia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedWikia _$ExpandedWikiaFromJson(Map<String, dynamic> json) {
  return ExpandedWikia(
    json['headline'] as String,
    json['desc'] as String,
    json['name'] as String,
    json['stats'] == null
        ? null
        : WikiaStats.fromJson(json['stats'] as Map<String, dynamic>),
    json['original_dimensions'] == null
        ? null
        : ImageSize.fromJson(
            json['original_dimensions'] as Map<String, dynamic>),
    json['url'] as String,
    json['image'] as String,
    (json['flags'] as List)?.map((e) => e as String)?.toList(),
    json['domain'] as String,
    json['wam_score'],
    json['id'] as int,
    json['language'] as String,
    (json['topUsers'] as List)?.map((e) => e as int)?.toList(),
    json['wordmark'] as String,
    json['topic'] as String,
    json['title'] as String,
    json['founding_user_id'] as String,
    json['creation_date'] as String,
    json['lang'] as String,
    json['hub'] as String,
  );
}

Map<String, dynamic> _$ExpandedWikiaToJson(ExpandedWikia instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headline', instance.headline);
  writeNotNull('desc', instance.desc);
  writeNotNull('name', instance.name);
  writeNotNull('stats', instance.stats?.toJson());
  writeNotNull('original_dimensions', instance.originalDimensions?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('image', instance.image);
  writeNotNull('flags', instance.flags);
  writeNotNull('domain', instance.domain);
  writeNotNull('wam_score', instance.wamScore);
  writeNotNull('id', instance.id);
  writeNotNull('language', instance.language);
  writeNotNull('lang', instance.lang);
  writeNotNull('hub', instance.hub);
  writeNotNull('topUsers', instance.topUsers);
  writeNotNull('wordmark', instance.wordmark);
  writeNotNull('topic', instance.topic);
  writeNotNull('title', instance.title);
  writeNotNull('founding_user_id', instance.foundingUserId);
  writeNotNull('creation_date', instance.creationDate);
  return val;
}
