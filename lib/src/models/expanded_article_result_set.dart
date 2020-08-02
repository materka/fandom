// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'expanded_article.dart';
import 'result_set.dart';

part 'expanded_article_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class ExpandedArticleResultSet extends ResultSet<ExpandedArticle> {
  final String offset;

  ExpandedArticleResultSet(
      List<ExpandedArticle> items, String basePath, this.offset)
      : super(items, basePath);

  factory ExpandedArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$ExpandedArticleResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandedArticleResultSetToJson(this);
}
