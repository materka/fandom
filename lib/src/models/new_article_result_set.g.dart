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
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$NewArticleResultSetToJson(NewArticleResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  writeNotNull('basepath', instance.basePath);
  return val;
}
