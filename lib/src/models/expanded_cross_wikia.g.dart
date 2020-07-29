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
    json['id'] as int,
    json['topUsers'] as String,
    json['wordmark'] as String,
    json['title'] as String,
    json['lang'] as String,
  );
}
