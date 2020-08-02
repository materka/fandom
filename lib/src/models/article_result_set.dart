// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'article.dart';
import 'result_set.dart';

part 'article_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleResultSet extends ResultSet<Article> {
  /// Offset to start next batch of data
  final String offset;

  ArticleResultSet(List<Article> items, String basePath, this.offset)
      : super(items, basePath);

  factory ArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$ArticleResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleResultSetToJson(this);
}
