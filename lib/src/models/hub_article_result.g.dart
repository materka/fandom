// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hub_article_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HubArticleResult _$HubArticleResultFromJson(Map<String, dynamic> json) {
  return HubArticleResult(
    json['wikia'] == null
        ? null
        : WikiaInfo.fromJson(json['wikia'] as Map<String, dynamic>),
    (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : HubArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HubArticleResultToJson(HubArticleResult instance) =>
    <String, dynamic>{
      'wikia': instance.wikia,
      'articles': instance.articles,
    };
