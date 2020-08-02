// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'hub_article_result.dart';
import 'result_set.dart';

part 'hub_article_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class HubArticleResultSet extends ResultSet<HubArticleResult> {
  HubArticleResultSet(List<HubArticleResult> items) : super(items, null);

  factory HubArticleResultSet.fromJson(Map<String, dynamic> json) =>
      _$HubArticleResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$HubArticleResultSetToJson(this);
}
