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

Map<String, dynamic> _$SearchSuggestionResultSetToJson(
    SearchSuggestionResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  return val;
}
