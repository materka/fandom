import 'package:json_annotation/json_annotation.dart';

part 'creator.g.dart';

@JsonSerializable()
class Creator {
  /// Url for user avatar
  final String avatar;

  /// User name
  final String name;

  Creator(this.avatar, this.name);

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
}
