// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Admin _$AdminFromJson(Map<String, dynamic> json) {
  return Admin(
    json['name'] as String,
    json['avatarUrl'] as String,
    json['edits'] as int,
    json['userContributionsUrl'] as String,
    json['userPageUrl'] as String,
    json['userId'] as int,
    json['since'] == null ? null : DateTime.parse(json['since'] as String),
  );
}
