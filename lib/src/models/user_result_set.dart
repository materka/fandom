import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_result_set.g.dart';

@JsonSerializable(createToJson: false)
class UserResultSet extends ResultSet<User> {
  UserResultSet(List<User> items, String basePath) : super(items, basePath);

  factory UserResultSet.fromJson(Map<String, dynamic> json) =>
      _$UserResultSetFromJson(json);
}
