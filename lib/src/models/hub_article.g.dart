// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hub_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HubArticle _$HubArticleFromJson(Map<String, dynamic> json) {
  return HubArticle(
    json['id'] as int,
    json['ns'] as int,
  );
}

Map<String, dynamic> _$HubArticleToJson(HubArticle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('ns', instance.ns);
  return val;
}
