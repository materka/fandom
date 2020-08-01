// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_linked_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostLinkedArticle _$MostLinkedArticleFromJson(Map<String, dynamic> json) {
  return MostLinkedArticle(
    json['id'] as String,
    json['title'] as String,
    json['url'] as String,
    json['ns'] as int,
    json['backlink_cnt'] as int,
  );
}

Map<String, dynamic> _$MostLinkedArticleToJson(MostLinkedArticle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('url', instance.url);
  writeNotNull('ns', instance.ns);
  writeNotNull('backlink_cnt', instance.backlinkCount);
  return val;
}
