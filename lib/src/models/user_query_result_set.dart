import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user_query.dart';

part 'user_query_result_set.g.dart';

@JsonSerializable(createToJson: false)
class UserQueryResultSet extends ResultSet<UserQuery> {
  UserQueryResultSet(List<UserQuery> items) : super(items, null);

  factory UserQueryResultSet.fromJson(Map<String, dynamic> json) =>
      _$UserQueryResultSetFromJson(json);
}