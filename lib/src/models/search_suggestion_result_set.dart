// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';
import 'search_suggestion.dart';

part 'search_suggestion_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchSuggestionResultSet extends ResultSet<SearchSuggestion> {
  SearchSuggestionResultSet(List<SearchSuggestion> items) : super(items, null);

  factory SearchSuggestionResultSet.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSuggestionResultSetToJson(this);
}
