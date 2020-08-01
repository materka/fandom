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
    json['userId'] as String,
    json['since'] as String,
    json['lastRevision'] as String,
  );
}

Map<String, dynamic> _$AdminToJson(Admin instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('avatarUrl', instance.avatarUrl);
  writeNotNull('edits', instance.edits);
  writeNotNull('userContributionsUrl', instance.userContributionsUrl);
  writeNotNull('userPageUrl', instance.userPageUrl);
  writeNotNull('userId', instance.userId);
  writeNotNull('since', instance.since);
  writeNotNull('lastRevision', instance.lastRevision);
  return val;
}
