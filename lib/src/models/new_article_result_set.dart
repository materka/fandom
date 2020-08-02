// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'new_article.dart';
import 'result_set.dart';

part 'new_article_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class NewArticleResultSet extends ResultSet<NewArticle> {
  NewArticleResultSet(List<NewArticle> items, String basePath)
      : super(items, basePath);

  factory NewArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$NewArticleResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$NewArticleResultSetToJson(this);
}
