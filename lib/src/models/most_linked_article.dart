import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'most_linked_article.g.dart';

@JsonSerializable(createToJson: false)
class MostLinkedArticle extends Article {
  @JsonKey(name: 'backlink_cnt')
  final int backlinkCount;

  MostLinkedArticle(
      int id, String title, String url, int ns, this.backlinkCount)
      : super(id, title, url, ns);

  factory MostLinkedArticle.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedArticleFromJson(json);
}
