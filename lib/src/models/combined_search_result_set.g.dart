// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combined_search_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CombinedSearchResultSet _$CombinedSearchResultSetFromJson(
    Map<String, dynamic> json) {
  return CombinedSearchResultSet(
    (json['wikias'] as List)
        ?.map((e) => e == null
            ? null
            : CombinedSearchWikia.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['articles'] as List)
        ?.map((e) => e == null
            ? null
            : CombinedSearchArticle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
