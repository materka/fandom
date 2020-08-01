// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_page_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedPageResultSet _$RelatedPageResultSetFromJson(Map<String, dynamic> json) {
  return RelatedPageResultSet(
    (json['items'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          (e as List)
              ?.map((e) => e == null
                  ? null
                  : RelatedPage.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    ),
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$RelatedPageResultSetToJson(
    RelatedPageResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'items',
      instance.items
          ?.map((k, e) => MapEntry(k, e?.map((e) => e?.toJson())?.toList())));
  writeNotNull('basepath', instance.basePath);
  return val;
}
