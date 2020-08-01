// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'min_max_date.dart';

part 'min_max_date_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
// TODO: Name change...this is just a container for minMaxDate
class MinMaxDateResultSet {
  @JsonKey(name: 'min_max_dates')
  final MinMaxDate minMaxDate;

  MinMaxDateResultSet(this.minMaxDate);

  factory MinMaxDateResultSet.fromJson(Map<String, dynamic> json) =>
      _$MinMaxDateResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$MinMaxDateResultSetToJson(this);
}
