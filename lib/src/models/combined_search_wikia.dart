import 'package:json_annotation/json_annotation.dart';

part 'combined_search_wikia.g.dart';

@JsonSerializable(createToJson: false)
class CombinedSearchWikia {
  /// Name of Wikia site
  final String name;

  /// URL to the main page
  final String url;

  /// Description of the Wikia site
  final String snippet;

  /// ID of Wikia site
  final int wikiId;

  /// URL for Wikia site logo
  final String wordmark;

  /// Language of the Wikia site
  final String lang;

  CombinedSearchWikia(
      this.name, this.url, this.snippet, this.wikiId, this.wordmark, this.lang);

  factory CombinedSearchWikia.fromJson(Map<String, dynamic> json) =>
      _$CombinedSearchWikiaFromJson(json);
}
