// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'expanded_article.dart';

part 'article_details_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleDetailsResultSet {
  final Map<String, ExpandedArticle> items;
  @JsonKey(name: 'basepath')
  final String basePath;

  ArticleDetailsResultSet(this.items, this.basePath);

  factory ArticleDetailsResultSet.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailsResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDetailsResultSetToJson(this);
}
