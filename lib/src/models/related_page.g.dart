// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedPage _$RelatedPageFromJson(Map<String, dynamic> json) {
  return RelatedPage(
    json['url'] as String,
    json['text'] as String,
    json['imgUrl'] as String,
    json['imgOriginalDimensions'] == null
        ? null
        : ImageSize.fromJson(
            json['imgOriginalDimensions'] as Map<String, dynamic>),
    json['id'] as int,
    json['title'] as String,
  );
}
