// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(createToJson: false)
class Article {
  /// An internal identification number for the article
  final int id;

  /// The title of the article
  final String title;

  /// The relative URL of the Article.
  /// Absolute URL: obtained from combining [url] with ResultSet.basePath
  /// attribute from response
  final String url;

  /// The namespace value of the article
  final int ns;

  Article(this.id, this.title, this.url, this.ns);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
