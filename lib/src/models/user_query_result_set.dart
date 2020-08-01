// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user_query.dart';

part 'user_query_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class UserQueryResultSet extends ResultSet<UserQuery> {
  @JsonKey(name: 'users')
  List<UserQuery> get items => super.items;

  UserQueryResultSet(List<UserQuery> items) : super(items, null);

  factory UserQueryResultSet.fromJson(Map<String, dynamic> json) =>
      _$UserQueryResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$UserQueryResultSetToJson(this);
}
