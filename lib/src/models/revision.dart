import 'package:json_annotation/json_annotation.dart';

part 'revision.g.dart';

@JsonSerializable(createToJson: false)
class Revision {
  /// An internal identification number for Revision
  final int id;

  /// The name of the user who made the revision
  final String user;

  /// An internal identification number for User
  @JsonKey(name: 'user_id')
  final int userId;

  /// The Unix timestamp (in seconds) that the revision was made
  final int timestamp;

  Revision(this.id, this.user, this.userId, this.timestamp);

  factory Revision.fromJson(Map<String, dynamic> json) =>
      _$RevisionFromJson(json);
}
