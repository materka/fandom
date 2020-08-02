// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'expanded_article.dart';
import 'image_size.dart';
import 'revision.dart';

part 'most_linked_expanded_article.g.dart';

@JsonSerializable(explicitToJson: true)
class MostLinkedExpandedArticle extends ExpandedArticle {
  /// Number of backlinks for the article
  @JsonKey(name: 'backlink_cnt')
  final int backlinkCount;

  MostLinkedExpandedArticle(
      ImageSize originalDimensions,
      String url,
      int ns,
      String abstract,
      String thumbnail,
      Revision revision,
      int id,
      String title,
      String type,
      int comments,
      this.backlinkCount)
      : super(originalDimensions, url, ns, abstract, thumbnail, revision, id,
            title, type, comments);

  factory MostLinkedExpandedArticle.fromJson(Map<String, dynamic> json) =>
      _$MostLinkedExpandedArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MostLinkedExpandedArticleToJson(this);
}
