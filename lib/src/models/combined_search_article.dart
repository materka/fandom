// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'combined_search_article.g.dart';

@JsonSerializable(createToJson: false)
class CombinedSearchArticle {
  /// Quality score of the article, ranges from 0 (low quality) to 99 (high quality)
  final int quality;

  /// URL to the article
  final String url;

  /// The URL of the image
  final String image;

  /// Text snippet for the article
  final String snippet;

  /// ID of Wikia site
  final int wikiId;

  /// The title of the article
  final String title;

  /// Language of the article
  final String lang;

  /// Type of article ( book | character | comic_book | location | movie | person | tv_episode | tv_season | tv_series | other | video_game )
  final String type;

  /// ID of the article on the Wikia site
  final int articleId;

  CombinedSearchArticle(this.quality, this.url, this.image, this.snippet,
      this.wikiId, this.title, this.lang, this.type, this.articleId);

  factory CombinedSearchArticle.fromJson(Map<String, dynamic> json) =>
      _$CombinedSearchArticleFromJson(json);
}
