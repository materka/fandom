// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_details_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDetailsResultSet _$ArticleDetailsResultSetFromJson(
    Map<String, dynamic> json) {
  return ArticleDetailsResultSet(
    (json['items'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : ExpandedArticle.fromJson(e as Map<String, dynamic>)),
    ),
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$ArticleDetailsResultSetToJson(
    ArticleDetailsResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'items', instance.items?.map((k, e) => MapEntry(k, e?.toJson())));
  writeNotNull('basepath', instance.basePath);
  return val;
}
