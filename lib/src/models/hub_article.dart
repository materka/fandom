import 'package:json_annotation/json_annotation.dart';

part 'hub_article.g.dart';

@JsonSerializable()
class HubArticle {
  /// An internal identification number for Article
  final int id;

  /// he namespace value of the given article
  final int ns;

  HubArticle(this.id, this.ns);

  factory HubArticle.fromJson(Map<String, dynamic> json) =>
      _$HubArticleFromJson(json);
}