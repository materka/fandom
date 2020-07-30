// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'activity_response.g.dart';

@JsonSerializable(createToJson: false)
class ActivityResponse {
  /// The ID of the article affected
  final int article;

  /// The ID of the user performing the activity
  final int user;

  /// The ID of the revision created from this event
  final int revisionId;

  /// The Unix timestamp (in seconds) when the revision was made
  final int timestamp;

  ActivityResponse(this.article, this.user, this.revisionId, this.timestamp);

  factory ActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseFromJson(json);
}
