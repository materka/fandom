// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/models/most_linked_article.dart';
import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'most_linked_article_result_set.g.dart';

@JsonSerializable(createToJson: false)
class MostLinkedArticleResultSet extends ResultSet<MostLinkedArticle> {
  MostLinkedArticleResultSet(List<MostLinkedArticle> items, String basePath)
      : super(items, basePath);

  factory MostLinkedArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedArticleResultSetFromJson(json);
}
