// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_wiki_search_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalWikiSearchResultSet _$LocalWikiSearchResultSetFromJson(
    Map<String, dynamic> json) {
  return LocalWikiSearchResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : LocalWikiSearch.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['batches'] as int,
    json['total'] as int,
    json['currentBatch'] as int,
    json['next'] as int,
  );
}
