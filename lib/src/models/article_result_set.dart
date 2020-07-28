import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'article_result_set.g.dart';

@JsonSerializable(createToJson: false)
class ArticleResultSet extends ResultSet<Article> {
  /// Offset to start next batch of data
  final String offset;

  ArticleResultSet(List<Article> items, String basePath, this.offset)
      : super(items, basePath);

  factory ArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$ArticleResultSetFromJson(json);
}
