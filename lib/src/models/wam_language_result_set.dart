// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';

part 'wam_language_result_set.g.dart';

@JsonSerializable()
class WamLanguageResultSet extends ResultSet<String> {
  /// list of language codes of the wikis that are in the WAM ranking
  /// for a given day
  @JsonKey(name: 'languages')
  List<String> get items => super.items;

  WamLanguageResultSet(List<String> items) : super(items, null);

  factory WamLanguageResultSet.fromJson(Map<String, dynamic> json) =>
      _$WamLanguageResultSetFromJson(json);

  Map<String, dynamic> toJson() => _$WamLanguageResultSetToJson(this);
}
