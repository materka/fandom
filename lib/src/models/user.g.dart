// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['avatar'] as String,
    json['url'] as String,
    json['user_id'] as int,
    json['numberofedits'] as int,
    json['title'] as String,
    json['is_subject_to_ccpa'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('url', instance.url);
  writeNotNull('user_id', instance.userId);
  writeNotNull('numberofedits', instance.numberOfEdits);
  writeNotNull('title', instance.title);
  writeNotNull('is_subject_to_ccpa', instance.isSubjectToCCPA);
  return val;
}
