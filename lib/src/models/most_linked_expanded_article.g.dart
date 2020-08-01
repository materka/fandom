// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_linked_expanded_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostLinkedExpandedArticle _$MostLinkedExpandedArticleFromJson(
    Map<String, dynamic> json) {
  return MostLinkedExpandedArticle(
    json['original_dimensions'] == null
        ? null
        : ImageSize.fromJson(
            json['original_dimensions'] as Map<String, dynamic>),
    json['url'] as String,
    json['ns'] as int,
    json['abstract'] as String,
    json['thumbnail'] as String,
    json['revision'] == null
        ? null
        : Revision.fromJson(json['revision'] as Map<String, dynamic>),
    json['id'] as int,
    json['title'] as String,
    json['type'] as String,
    json['comments'] as int,
    json['backlink_cnt'] as int,
  );
}

Map<String, dynamic> _$MostLinkedExpandedArticleToJson(
    MostLinkedExpandedArticle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('original_dimensions', instance.originalDimensions?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('ns', instance.ns);
  writeNotNull('abstract', instance.abstract);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('revision', instance.revision?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('type', instance.type);
  writeNotNull('comments', instance.comments);
  writeNotNull('backlink_cnt', instance.backlinkCount);
  return val;
}
