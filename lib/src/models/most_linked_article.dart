// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'most_linked_article.g.dart';

@JsonSerializable()
class MostLinkedArticle extends Article {
  /// Number of backlinks for the article
  @JsonKey(name: 'backlink_cnt')
  final int backlinkCount;

  MostLinkedArticle(
      String id, String title, String url, int ns, this.backlinkCount)
      : super(id, title, url, ns);

  factory MostLinkedArticle.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MostLinkedArticleToJson(this);
}
