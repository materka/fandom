// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'related_page.dart';

part 'related_page_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedPageResultSet {
  final Map<String, List<RelatedPage>> items;
  @JsonKey(name: 'basepath')
  final String basePath;

  RelatedPageResultSet(this.items, this.basePath);

  factory RelatedPageResultSet.fromJson(Map<String, dynamic> json) =>
      _$RelatedPageResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedPageResultSetToJson(this);
}
