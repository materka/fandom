// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityResponse _$ActivityResponseFromJson(Map<String, dynamic> json) {
  return ActivityResponse(
    json['article'] as int,
    json['user'] as int,
    json['revisionId'] as int,
    json['timestamp'] as int,
  );
}

Map<String, dynamic> _$ActivityResponseToJson(ActivityResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('article', instance.article);
  writeNotNull('user', instance.user);
  writeNotNull('revisionId', instance.revisionId);
  writeNotNull('timestamp', instance.timestamp);
  return val;
}
