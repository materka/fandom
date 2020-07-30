// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';
import 'wam.dart';

part 'wam_result_set.g.dart';

@JsonSerializable(createToJson: false)
class WamResultSet extends ResultSet<Wam> {
  /// The total count of wikis available for provided params,
  final int totalResults;

  /// Date of received list
  final indexDate;

  WamResultSet(List<Wam> items, this.totalResults, this.indexDate)
      : super(items, null);

  factory WamResultSet.fromJson(Map<String, dynamic> json) =>
      _$WamResultSetFromJson(json);
}
