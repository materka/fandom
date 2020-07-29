// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_linked_article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostLinkedArticleResultSet _$MostLinkedArticleResultSetFromJson(
    Map<String, dynamic> json) {
  return MostLinkedArticleResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : MostLinkedArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
