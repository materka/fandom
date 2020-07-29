// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'combined_search_article.dart';
import 'combined_search_wikia.dart';

part 'combined_search_result_set.g.dart';

@JsonSerializable(createToJson: false)
class CombinedSearchResultSet {
  /// Container for wikias collection
  final List<CombinedSearchWikia> wikias;

  /// Container for articles collection
  final List<CombinedSearchArticle> articles;

  CombinedSearchResultSet(this.wikias, this.articles);

  factory CombinedSearchResultSet.fromJson(Map<String, dynamic> json) =>
      _$CombinedSearchResultSetFromJson(json);
}
