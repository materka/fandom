import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'hub_article_result.dart';

part 'hub_article_result_set.g.dart';

@JsonSerializable()
class HubArticleResultSet extends ResultSet<HubArticleResult> {
  HubArticleResultSet(List<HubArticleResult> items) : super(items, null);

  factory HubArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$HubArticleResultSetFromJson(json);
}
