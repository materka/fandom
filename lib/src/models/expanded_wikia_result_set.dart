// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'expanded_wikia.dart';
import 'result_set.dart';

part 'expanded_wikia_result_set.g.dart';

@JsonSerializable(createToJson: false)
class ExpandedWikiaResultSet extends ResultSet<ExpandedWikia> {
  /// Total number of batches
  final int batches;

  /// Total number of results
  final int total;

  /// Current batch number
  final int currentBatch;

  /// Number of elements in next batch
  final int next;

  ExpandedWikiaResultSet(List<ExpandedWikia> items, this.batches, this.total,
      this.currentBatch, this.next)
      : super(items, null);

  factory ExpandedWikiaResultSet.fromJson(Map<String, dynamic> json) =>
      _$ExpandedWikiaResultSetFromJson(json);
}
