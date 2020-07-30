// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(createToJson: false)
class User {
  /// Wikia user name (it can contain space characters)
  final String name;

  /// The absolute URL of the user avatar image
  final String avatar;

  /// The relative URL of the User page.
  /// Absolute URL: obtained from combining [url] with ResultSet.basePath
  /// attribute from response
  final String url;

  /// An internal identification number for User
  @JsonKey(name: 'user_id')
  final int userId;

  /// Total number of edits made by user on the current wiki
  final int numberofedits;

  /// Wikia user login
  final String title;

  User(this.name, this.avatar, this.url, this.userId, this.numberofedits,
      this.title);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
