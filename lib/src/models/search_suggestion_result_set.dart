import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'search_suggestion.dart';

part 'search_suggestion_result_set.g.dart';

@JsonSerializable(createToJson: false)
class SearchSuggestionResultSet extends ResultSet<SearchSuggestion> {
  SearchSuggestionResultSet(List<SearchSuggestion> items) : super(items, null);

  factory SearchSuggestionResultSet.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionResultSetFromJson(json);
}
