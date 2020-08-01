// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    json['id'],
    json['title'] as String,
    json['url'] as String,
    json['ns'] as int,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) {
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
  return val;
}
