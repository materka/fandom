import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'new_article.dart';

part 'new_article_result_set.g.dart';

@JsonSerializable(createToJson: false)
class NewArticleResultSet extends ResultSet<NewArticle> {
  NewArticleResultSet(List<NewArticle> items, String basePath)
      : super(items, basePath);

  factory NewArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$NewArticleResultSetFromJson(json);
}
