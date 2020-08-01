// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'wikia_stats.g.dart';

@JsonSerializable()
class WikiaStats {
  /// Number of total users on Wikia
  final int users;

  /// Number of total articles on Wikia
  final int articles;

  /// Number of total pages on Wikia
  final int pages;

  /// Number of total admins on Wikia
  final int admins;

  /// Number of total active users on Wikia
  final int activeUsers;

  /// Number of total edits for Wikia
  final int edits;

  /// Number of total videos on Wikia
  final int videos;

  /// Number of total images on Wikia
  final int images;

  /// Number of total discussions on Wikia
  final int discussions;

  WikiaStats(this.users, this.articles, this.pages, this.admins,
      this.activeUsers, this.edits, this.videos, this.images, this.discussions);

  factory WikiaStats.fromJson(Map<String, dynamic> json) =>
      _$WikiaStatsFromJson(json);

  Map<String, dynamic> toJson() => _$WikiaStatsToJson(this);
}
