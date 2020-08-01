// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSuggestion _$SearchSuggestionFromJson(Map<String, dynamic> json) {
  return SearchSuggestion(
    json['title'] as String,
  );
}

Map<String, dynamic> _$SearchSuggestionToJson(SearchSuggestion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
