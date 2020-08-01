// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'wam.dart';

part 'wam_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class WamResultSet {
  @JsonKey(name: 'wam_index')
  final Map<String, Wam> items;

  /// The total count of wikis available for provided params,
  @JsonKey(name: 'wam_results_total')
  final String totalResults;

  /// Date of received list (Unix timestamp)
  @JsonKey(name: 'wam_index_date')
  final int indexDate;

  /// ? (Unix timestamp)
  @JsonKey(name: 'wam_actual_date')
  final int actualDate;

  WamResultSet(this.items, this.totalResults, this.indexDate, this.actualDate);

  factory WamResultSet.fromJson(Map<String, dynamic> json) =>
      _$WamResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$WamResultSetToJson(this);
}
