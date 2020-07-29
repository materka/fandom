// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'local_wiki_search.dart';

part 'local_wiki_search_result_set.g.dart';

@JsonSerializable(createToJson: false)
class LocalWikiSearchResultSet extends ResultSet<LocalWikiSearch> {
  /// Number of batches (pages) of results,
  final int batches;

  /// Total number of results,
  final int total;

  /// The index of the current batch (page),
  final int currentBatch;

  /// The amount of items in the next batch (page)
  final int next;

  LocalWikiSearchResultSet(List<LocalWikiSearch> items, this.batches,
      this.total, this.currentBatch, this.next)
      : super(items, null);

  factory LocalWikiSearchResultSet.fromJson(Map<String, dynamic> json) =>
      _$LocalWikiSearchResultSetFromJson(json);
}
