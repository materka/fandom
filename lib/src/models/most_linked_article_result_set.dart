// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'most_linked_article.dart';
import 'result_set.dart';

part 'most_linked_article_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class MostLinkedArticleResultSet extends ResultSet<MostLinkedArticle> {
  MostLinkedArticleResultSet(List<MostLinkedArticle> items, String basePath)
      : super(items, basePath);

  factory MostLinkedArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedArticleResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$MostLinkedArticleResultSetToJson(this);
}
