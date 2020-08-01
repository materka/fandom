// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'min_max_date.g.dart';

@JsonSerializable()
class MinMaxDate {
  /// Unix timestamp (in seconds) for minimal date of index
  @JsonKey(name: 'min_date')
  final int min;

  /// Unix timestamp (in seconds) for maximal date of index
  @JsonKey(name: 'max_date')
  final int max;

  MinMaxDate(this.min, this.max);

  factory MinMaxDate.fromJson(Map<String, dynamic> json) =>
      _$MinMaxDateFromJson(json);

  Map<String, dynamic> toJson() => _$MinMaxDateToJson(this);
}
