// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedArticleResultSet _$ExpandedArticleResultSetFromJson(
    Map<String, dynamic> json) {
  return ExpandedArticleResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ExpandedArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
