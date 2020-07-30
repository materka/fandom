// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/models/image_size.dart';
import 'package:json_annotation/json_annotation.dart';

import 'creator.dart';

part 'new_article.g.dart';

@JsonSerializable(createToJson: false)
class NewArticle {
  /// Quality score of the article,
  /// ranges from 0 (low quality) to 99 (high quality)
  final int quality;

  /// The original dimensions of the thumbnail for the article, if available
  @JsonKey(name: 'original_dimensions')
  final ImageSize originalDimensions;

  /// The relative URL of the Article.
  /// Absolute URL: obtained from combining [url] with ResultSet.basePath
  /// attribute from response.
  final String url;

  /// The namespace value of the given article
  final int ns;

  /// A snippet of text from the beginning of the article
  final String abstract;

  /// Data about the author of the article (creator of the first revision)
  final Creator creator;

  /// The absolute URL of the thumbnail
  final String thumbnail;

  /// Date of the first revision of the article
  @JsonKey(name: 'creation_date')
  final String creationDate;

  /// An internal identification number for Article
  final int id;

  /// The title of the article
  final String title;

  NewArticle(
      this.quality,
      this.originalDimensions,
      this.url,
      this.ns,
      this.abstract,
      this.creator,
      this.thumbnail,
      this.creationDate,
      this.id,
      this.title);

  factory NewArticle.fromJson(Map<String, dynamic> json) =>
      _$NewArticleFromJson(json);
}
