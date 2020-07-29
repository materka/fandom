// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_linked_expanded_article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostLinkedExpandedArticleResultSet _$MostLinkedExpandedArticleResultSetFromJson(
    Map<String, dynamic> json) {
  return MostLinkedExpandedArticleResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : MostLinkedExpandedArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
