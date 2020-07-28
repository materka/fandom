import 'package:json_annotation/json_annotation.dart';

part 'user_query.g.dart';

@JsonSerializable(createToJson: false)
class UserQuery {
  /// Wikia user ID
  final int id;

  /// Wikia user name (it can contain space characters)
  final String name;

  UserQuery(this.id, this.name);

  factory UserQuery.fromJson(Map<String, dynamic> json) =>
      _$UserQueryFromJson(json);
}
