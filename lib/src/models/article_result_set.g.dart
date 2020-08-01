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
    json['basepath'] as String,
    json['offset'] as String,
  );
}

Map<String, dynamic> _$ArticleResultSetToJson(ArticleResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  writeNotNull('basepath', instance.basePath);
  writeNotNull('offset', instance.offset);
  return val;
}
