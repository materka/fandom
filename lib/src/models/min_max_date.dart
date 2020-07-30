// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'min_max_date.g.dart';

@JsonSerializable(createToJson: false)
class MinMaxDate {
  /// Unix timestamp (in seconds) for minimal date of index
  final int min;

  /// Unix timestamp (in seconds) for maximal date of index
  final int max;

  MinMaxDate(this.min, this.max);

  factory MinMaxDate.fromJson(Map<String, dynamic> json) =>
      _$MinMaxDateFromJson(json);
}
