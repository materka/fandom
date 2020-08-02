// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'image_size.dart';
import 'revision.dart';

part 'expanded_article.g.dart';

@JsonSerializable(explicitToJson: true)
class ExpandedArticle {
  /// The original dimensions of the thumbnail for the article, if available
  @JsonKey(name: 'original_dimensions')
  final ImageSize originalDimensions;

  /// The relative URL of the Article.
  /// Absolute URL: obtained from combining [url] with
  /// ResultSet.basePath attribute from response
  final String url;

  /// The namespace value of the given article
  final int ns;

  /// A snippet of text from the beginning of the article
  final String abstract;

  /// The absolute URL of the thumbnail
  final String thumbnail;

  /// The latest revision for this article
  final Revision revision;

  /// An internal identification number for Article
  final int id;

  /// The title of the article
  final String title;

  /// The functional type of the document (e.g. article, file, category)
  final String type;

  /// Number of comments on this article
  final int comments;

  ExpandedArticle(
      this.originalDimensions,
      this.url,
      this.ns,
      this.abstract,
      this.thumbnail,
      this.revision,
      this.id,
      this.title,
      this.type,
      this.comments);

  factory ExpandedArticle.fromJson(Map<String, dynamic> json) =>
      _$ExpandedArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandedArticleToJson(this);
}
