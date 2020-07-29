// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_page_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedPageResultSet _$RelatedPageResultSetFromJson(Map<String, dynamic> json) {
  return RelatedPageResultSet(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : RelatedPage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
