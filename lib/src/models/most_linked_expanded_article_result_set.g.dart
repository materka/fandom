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
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$MostLinkedExpandedArticleResultSetToJson(
    MostLinkedExpandedArticleResultSet instance) {
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
