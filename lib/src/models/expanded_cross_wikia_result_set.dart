import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'expanded_cross_wikia.dart';

part 'expanded_cross_wikia_result_set.g.dart';

@JsonSerializable(createToJson: false)
class ExpandedCrossWikiaResultSet extends ResultSet<ExpandedCrossWikia> {
  ExpandedCrossWikiaResultSet(List<ExpandedCrossWikia> items)
      : super(items, null);

  factory ExpandedCrossWikiaResultSet.fromJson(Map<String, dynamic> json) =>
      _$ExpandedCrossWikiaResultSetFromJson(json);
}
