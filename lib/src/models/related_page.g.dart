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

Map<String, dynamic> _$RelatedPageToJson(RelatedPage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('text', instance.text);
  writeNotNull('imgUrl', instance.imgUrl);
  writeNotNull(
      'imgOriginalDimensions', instance.imgOriginalDimensions?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  return val;
}
