// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewArticle _$NewArticleFromJson(Map<String, dynamic> json) {
  return NewArticle(
    json['quality'] as int,
    json['original_dimensions'] == null
        ? null
        : ImageSize.fromJson(
            json['original_dimensions'] as Map<String, dynamic>),
    json['url'] as String,
    json['ns'] as int,
    json['abstract'] as String,
    json['creator'] == null
        ? null
        : Creator.fromJson(json['creator'] as Map<String, dynamic>),
    json['thumbnail'] as String,
    json['creation_date'] as String,
    json['id'] as int,
    json['title'] as String,
  );
}

Map<String, dynamic> _$NewArticleToJson(NewArticle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quality', instance.quality);
  writeNotNull('original_dimensions', instance.originalDimensions?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('ns', instance.ns);
  writeNotNull('abstract', instance.abstract);
  writeNotNull('creator', instance.creator?.toJson());
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('creation_date', instance.creationDate);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  return val;
}
