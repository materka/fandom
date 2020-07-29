// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResultSet _$ArticleResultSetFromJson(Map<String, dynamic> json) {
  return ArticleResultSet(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
    json['offset'] as String,
  );
}
