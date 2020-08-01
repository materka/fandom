// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'user_query.g.dart';

@JsonSerializable()
class UserQuery {
  /// Wikia user ID
  final String id; // TODO: API Doc says type int but return String

  /// Wikia user name (it can contain space characters)
  final String name;

  UserQuery(this.id, this.name);

  factory UserQuery.fromJson(Map<String, dynamic> json) =>
      _$UserQueryFromJson(json);
  Map<String, dynamic> toJson() => _$UserQueryToJson(this);
}
