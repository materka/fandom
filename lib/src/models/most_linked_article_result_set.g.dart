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
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$MostLinkedArticleResultSetToJson(
    MostLinkedArticleResultSet instance) {
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
