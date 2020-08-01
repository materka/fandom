// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'image_size.dart';
import 'wikia_stats.dart';

part 'expanded_wikia.g.dart';

@JsonSerializable(explicitToJson: true)
class ExpandedWikia {
  /// Wikia headline
  final String headline;

  /// Description about Wikia content
  final String desc;

  /// Wikia name
  final String name;

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

  ///The absolute URL of the Wikia domain
  final String domain;

  /// Wiki WAM score
  @JsonKey(name: 'wam_score')
  final dynamic wamScore;

  /// An internal identification number for Wikia
  final int id;

  /// Wikia language
  final String language;

  /// Wikia language
  final String lang;

  final String hub;

  /// Array with ten top contributors
  final List<int> topUsers;

  /// Wiki wordmark image URL, might be empty
  final String wordmark;

  /// Topics describing Wikia content
  final String topic;

  /// Wikia title
  final String title;

  /// An internal identification number for Wikia founder,
  @JsonKey(name: 'founding_user_id')
  final String foundingUserId;

  /// Date and time of the creation of Wikia
  @JsonKey(name: 'creation_date')
  final String creationDate;

  ExpandedWikia(
      this.headline,
      this.desc,
      this.name,
      this.stats,
      this.originalDimensions,
      this.url,
      this.image,
      this.flags,
      this.domain,
      this.wamScore,
      this.id,
      this.language,
      this.topUsers,
      this.wordmark,
      this.topic,
      this.title,
      this.foundingUserId,
      this.creationDate,
      this.lang,
      this.hub);

  factory ExpandedWikia.fromJson(Map<String, dynamic> json) =>
      _$ExpandedWikiaFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandedWikiaToJson(this);
}
