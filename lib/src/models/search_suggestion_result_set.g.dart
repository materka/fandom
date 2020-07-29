// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSuggestionResultSet _$SearchSuggestionResultSetFromJson(
    Map<String, dynamic> json) {
  return SearchSuggestionResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : SearchSuggestion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
