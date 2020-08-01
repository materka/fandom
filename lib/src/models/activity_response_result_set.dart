// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'activity_response.dart';
import 'result_set.dart';

part 'activity_response_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class ActivityResponseResultSet extends ResultSet<ActivityResponse> {
  ActivityResponseResultSet(List<ActivityResponse> items, String basePath)
      : super(items, basePath);

  factory ActivityResponseResultSet.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityResponseResultSetToJson(this);
}
