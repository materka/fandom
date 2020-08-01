// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'result_set.dart';
import 'wikia.dart';

part 'wikia_result_set.g.dart';

@JsonSerializable(explicitToJson: true)
class WikiaResultSet extends ResultSet<Wikia> {
  /// Total number of batches
  final int batches;

  /// Total number of results
  final int total;

  /// Current batch number
  final int currentBatch;

  /// Number of elements in next batch
  final int next;

  WikiaResultSet(
      List<Wikia> items, this.batches, this.total, this.currentBatch, this.next)
      : super(items, null);

  factory WikiaResultSet.fromJson(Map<String, dynamic> json) =>
      _$WikiaResultSetFromJson(json);
  Map<String, dynamic> toJson() => _$WikiaResultSetToJson(this);
}
