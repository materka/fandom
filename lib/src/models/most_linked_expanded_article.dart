import 'package:fandom/src/models/expanded_article.dart';
import 'package:json_annotation/json_annotation.dart';

part 'most_linked_expanded_article.g.dart';

@JsonSerializable(createToJson: false)
class MostLinkedExpandedArticle extends ExpandedArticle {
  /// Number of backlinks for the article
  @JsonKey(name: 'backlink_cnt')
  final backlinkCount;

  MostLinkedExpandedArticle(originalDimensions, url, ns, abstract, thumbnail,
      revision, id, title, type, comments, this.backlinkCount)
      : super(originalDimensions, url, ns, abstract, thumbnail, revision, id,
            title, type, comments);

  factory MostLinkedExpandedArticle.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedExpandedArticleFromJson(json);
}
