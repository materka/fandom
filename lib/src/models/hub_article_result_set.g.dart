// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hub_article_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HubArticleResultSet _$HubArticleResultSetFromJson(Map<String, dynamic> json) {
  return HubArticleResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : HubArticleResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HubArticleResultSetToJson(HubArticleResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  return val;
}
