// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'expanded_wikia.dart';
import 'result_set.dart';

part 'wikia_details_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class WikiaDetailsResultSet extends ResultSet<ExpandedWikia> {
  WikiaDetailsResultSet(List<ExpandedWikia> items) : super(items, null);

  factory WikiaDetailsResultSet.fromJson(Map<String, dynamic> json) =>
      _$WikiaDetailsResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$WikiaDetailsResultSetToJson(this);
}
