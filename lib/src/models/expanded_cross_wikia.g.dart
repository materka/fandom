// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_cross_wikia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedCrossWikia _$ExpandedCrossWikiaFromJson(Map<String, dynamic> json) {
  return ExpandedCrossWikia(
    json['headline'] as String,
    json['desc'] as String,
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
    (json['wam_score'] as num)?.toDouble(),
    json['id'] as String,
    json['topUsers'] as String,
    json['wordmark'] as String,
    json['title'] as String,
    json['language'] as String,
    json['topic'] as String,
  );
}

Map<String, dynamic> _$ExpandedCrossWikiaToJson(ExpandedCrossWikia instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headline', instance.headline);
  writeNotNull('desc', instance.desc);
  writeNotNull('stats', instance.stats?.toJson());
  writeNotNull('original_dimensions', instance.originalDimensions?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('image', instance.image);
  writeNotNull('flags', instance.flags);
  writeNotNull('wam_score', instance.wam_score);
  writeNotNull('id', instance.id);
  writeNotNull('topUsers', instance.topUsers);
  writeNotNull('wordmark', instance.wordmark);
  writeNotNull('title', instance.title);
  writeNotNull('language', instance.language);
  writeNotNull('topic', instance.topic);
  return val;
}
