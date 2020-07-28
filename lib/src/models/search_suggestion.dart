import 'package:json_annotation/json_annotation.dart';

part 'search_suggestion.g.dart';

@JsonSerializable(createToJson: false)
class SearchSuggestion {
  /// Searching article title
  final String title;

  SearchSuggestion(this.title);

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionFromJson(json);
}
