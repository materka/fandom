// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';

part 'wam_language_result_set.g.dart';

@JsonSerializable(createToJson: false)
class WamLanguageResultSet extends ResultSet<String> {
  /// items - list of language codes of the wikis that are in the WAM ranking
  /// for a given day
  WamLanguageResultSet(List<String> items) : super(items, null);

  factory WamLanguageResultSet.fromJson(Map<String, dynamic> json) =>
      _$WamLanguageResultSetFromJson(json);
}
