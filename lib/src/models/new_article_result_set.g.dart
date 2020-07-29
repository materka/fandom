// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewArticleResultSet _$NewArticleResultSetFromJson(Map<String, dynamic> json) {
  return NewArticleResultSet(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : NewArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
