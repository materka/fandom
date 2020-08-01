// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'admin.dart';

part 'wam.g.dart';

@JsonSerializable(explicitToJson: true)
class Wam {
  /// WAM Score
  final String wam;

  /// The number of weeks that the Wiki has been in the top 1000 Wikis
  @JsonKey(name: 'top_1k_weeks')
  final String top1kWeeks;

  /// Wiki WAM rank within its hub
  @JsonKey(name: 'hub_wam_rank')
  final String hubWamRank;

  /// WAM ranking
  @JsonKey(name: 'wam_rank')
  final String wamRank;

  /// The first date that the Wiki achieved its [peakWamRank]
  @JsonKey(name: 'first_peak')
  final String firstPeak;

  /// The absolute URL of the Wikia
  final String url;

  /// hub name
  @JsonKey(name: 'hub_name')
  final String hubName;

  /// The last date that the Wiki was at its [peakWamRank]
  @JsonKey(name: 'last_peak')
  final String lastPeak;

  /// The absolute URL of the Wikia image
  @JsonKey(name: 'wiki_image')
  final String wikiImage;

  /// Wiki admins list
  final List<Admin> admins;

  /// 1 - Wiki was not classified on wam_previous_day,
  /// 0 - This wiki was in index
  @JsonKey(name: 'wam_is_new')
  final String wamIsNew;

  /// The peak WAM Rank achieved by this Wiki
  @JsonKey(name: 'peak_wam_rank')
  final String peakWamRank;

  /// WAM score change from wam_previous_day
  @JsonKey(name: 'wam_change')
  final String wamChange;

  /// The number of days that the Wiki has been in the top 1000 Wikis
  @JsonKey(name: 'top_1k_days')
  final String top1kDays;

  /// Peak WAM Rank within its Hub
  @JsonKey(name: 'peak_hub_wam_rank')
  final String peakHubWamRank;

  /// An internal identification number for Wikia
  @JsonKey(name: 'wiki_id')
  final String wikiId;

  /// Wiki title
  final String title;

  /// An internal identification number for a Vertical
  @JsonKey(name: 'vertical_id')
  final String verticalId;

  @JsonKey(name: 'peak_vertical_wam_rank')
  final String peakVerticalWamRank;

  @JsonKey(name: 'vertical_name')
  final String verticalName;

  @JsonKey(name: 'vertical_wam_rank')
  final String verticalWamRank;

  Wam(
      this.wam,
      this.top1kWeeks,
      this.hubWamRank,
      this.wamRank,
      this.firstPeak,
      this.url,
      this.hubName,
      this.lastPeak,
      this.wikiImage,
      this.admins,
      this.wamIsNew,
      this.peakWamRank,
      this.wamChange,
      this.top1kDays,
      this.peakHubWamRank,
      this.wikiId,
      this.title,
      this.verticalId,
      this.peakVerticalWamRank,
      this.verticalName,
      this.verticalWamRank);

  factory Wam.fromJson(Map<String, dynamic> json) => _$WamFromJson(json);

  Map<String, dynamic> toJson() => _$WamToJson(this);
}
