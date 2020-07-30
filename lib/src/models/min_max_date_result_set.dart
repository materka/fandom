// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'min_max_date.dart';
import 'result_set.dart';

part 'min_max_date_result_set.g.dart';

@JsonSerializable(createToJson: false)
class MinMaxDateResultSet extends ResultSet<MinMaxDate> {
  MinMaxDateResultSet(List<MinMaxDate> items) : super(items, null);

  factory MinMaxDateResultSet.fromJson(Map<String, dynamic> json) =>
      _$MinMaxDateResultSetFromJson(json);
}
