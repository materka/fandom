// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_wiki_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalWikiSearch _$LocalWikiSearchFromJson(Map<String, dynamic> json) {
  return LocalWikiSearch(
    json['url'] as String,
    json['ns'] as int,
    json['id'] as int,
    json['title'] as String,
    json['snippet'] as String,
  );
}

Map<String, dynamic> _$LocalWikiSearchToJson(LocalWikiSearch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('ns', instance.ns);
  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('snippet', instance.snippet);
  return val;
}
