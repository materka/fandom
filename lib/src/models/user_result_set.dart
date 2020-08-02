// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';
import 'user.dart';

part 'user_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class UserResultSet extends ResultSet<User> {
  UserResultSet(List<User> items, String basePath) : super(items, basePath);

  factory UserResultSet.fromJson(Map<String, dynamic> json) =>
      _$UserResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$UserResultSetToJson(this);
}
