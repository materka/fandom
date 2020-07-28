import 'package:json_annotation/json_annotation.dart';

import 'hub_article.dart';
import 'wikia.dart';

part 'hub_article_result.g.dart';

@JsonSerializable()
class HubArticleResult {
  /// Wikia info object
  final Wikia wikia;

  final List<HubArticle> articles;

  HubArticleResult(this.wikia, this.articles);

  factory HubArticleResult.fromJson(Map<String, dynamic> json) =>
      _$HubArticleResultFromJson(json);
}
