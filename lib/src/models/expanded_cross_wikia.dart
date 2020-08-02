// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'image_size.dart';
import 'wikia_stats.dart';

part 'expanded_cross_wikia.g.dart';

@JsonSerializable(explicitToJson: true)
class ExpandedCrossWikia {
  /// Wikia headline
  final String headline;

  /// Description about Wikia content
  final String desc;

  /// Wikia title
  final WikiaStats stats;

  /// Object containing original image dimensions
  @JsonKey(name: 'original_dimensions')
  final ImageSize originalDimensions;

  /// The absolute URL of the Wikia
  final String url;

  /// The absolute URL of the Wikia image
  final String image;

  /// Array with flags
  final List<String> flags;

  /// Wiki WAM score
  @JsonKey(name: 'wam_score')
  final double wamScore;

  /// An internal identification number for Wikia
  final String id; // TODO: Doc API says type int but return String

  /// Array with ten top contributors
  final String topUsers;

  /// Wiki wordmark image URL, might be empty
  final String wordmark;

  /// Wikia title
  final String title;

  /// Wikia language
  final String language;

  final String topic;

  ExpandedCrossWikia(
      this.headline,
      this.desc,
      this.stats,
      this.originalDimensions,
      this.url,
      this.image,
      this.flags,
      this.wamScore,
      this.id,
      this.topUsers,
      this.wordmark,
      this.title,
      this.language,
      this.topic);

  factory ExpandedCrossWikia.fromJson(Map<String, dynamic> json) =>
      _$ExpandedCrossWikiaFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandedCrossWikiaToJson(this);
}
