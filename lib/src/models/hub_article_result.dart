// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'hub_article.dart';
import 'wikia_info.dart';

part 'hub_article_result.g.dart';

@JsonSerializable()
class HubArticleResult {
  /// Wikia info object
  final WikiaInfo wikia;

  final List<HubArticle> articles;

  HubArticleResult(this.wikia, this.articles);

  factory HubArticleResult.fromJson(Map<String, dynamic> json) =>
      _$HubArticleResultFromJson(json);
}
