// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'image_size.dart';

part 'related_page.g.dart';

@JsonSerializable(createToJson: false)
class RelatedPage {
  /// The relative URL of the Article.
  /// Absolute URL: obtained from combining [url] with
  /// ResultSet.basePath attribute from response
  final String url;

  /// Snippet of the article
  final String text;

  /// The absolute URL of the image
  final String imgUrl;

  /// Size of image
  final ImageSize imgOriginalDimensions;

  /// An internal identification number for Article
  final int id;

  /// Formatted article title
  final String title;

  RelatedPage(this.url, this.text, this.imgUrl, this.imgOriginalDimensions,
      this.id, this.title);

  factory RelatedPage.fromJson(Map<String, dynamic> json) =>
      _$RelatedPageFromJson(json);
}
