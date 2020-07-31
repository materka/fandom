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
    json['numberOfEdits'] as int,
    json['title'] as String,
    json['is_subject_to_ccpa'] as int,
  );
}
