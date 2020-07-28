import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(createToJson: false)
class Article {
  /// An internal identification number for Article,
  final int id;

  /// The title of the article,
  final String title;

  /// The relative URL of the Article. Absolute URL: obtained from combining relative URL with basepath attribute from response.,
  final String url;

  /// The namespace value of the given article
  final int ns;

  Article(this.id, this.title, this.url, this.ns);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
