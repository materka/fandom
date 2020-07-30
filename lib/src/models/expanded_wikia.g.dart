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
    (json['wam_score'] as num)?.toDouble(),
    json['id'] as int,
    json['lang'] as String,
    json['topUsers'] as String,
    json['wordmark'] as String,
    json['topic'] as String,
    json['title'] as String,
    json['founding_user_id'] as int,
    json['creation_date'] as String,
  );
}
