// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'admin.g.dart';

@JsonSerializable(createToJson: false)
class Admin {
  /// Admin name
  final String name;

  /// The absolute URL of the User avatar image
  final String avatarUrl;

  /// Number of edits
  final int edits;

  /// The absolute URL of the User contributions page
  final String userContributionsUrl;

  /// The absolute URL of the User page
  final String userPageUrl;

  /// An internal identification number for User
  final int userId;

  /// Join date
  final DateTime since;

  Admin(this.name, this.avatarUrl, this.edits, this.userContributionsUrl,
      this.userPageUrl, this.userId, this.since);

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
