import 'package:json_annotation/json_annotation.dart';

import 'activity_response.dart';
import 'result_set.dart';

part 'activity_response_result_set.g.dart';

@JsonSerializable(createToJson: false)
class ActivityResponseResultSet extends ResultSet<ActivityResponse> {
  ActivityResponseResultSet(List<ActivityResponse> items, String basePath)
      : super(items, basePath);

  factory ActivityResponseResultSet.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseResultSetFromJson(json);
}
