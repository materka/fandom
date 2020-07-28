import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'expanded_article.dart';

part 'expanded_article_result_set.g.dart';

@JsonSerializable(createToJson: false)
class ExpandedArticleResultSet extends ResultSet<ExpandedArticle> {
  ExpandedArticleResultSet(List<ExpandedArticle> items, String basePath)
      : super(items, basePath);

  factory ExpandedArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$ExpandedArticleResultSetFromJson(json);
}
