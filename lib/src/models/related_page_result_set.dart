import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'related_page.dart';

part 'related_page_result_set.g.dart';

@JsonSerializable(createToJson: false)
class RelatedPageResultSet extends ResultSet<RelatedPage> {
  RelatedPageResultSet(List<RelatedPage> items, String basePath)
      : super(items, basePath);

  factory RelatedPageResultSet.fromJson(Map<String, dynamic> json) =>
      _$RelatedPageResultSetFromJson(json);
}