// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'search_suggestion.g.dart';

@JsonSerializable()
class SearchSuggestion {
  /// Searching article title
  final String title;

  SearchSuggestion(this.title);

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSuggestionToJson(this);
}
