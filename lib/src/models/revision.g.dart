// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Revision _$RevisionFromJson(Map<String, dynamic> json) {
  return Revision(
    json['id'] as int,
    json['user'] as String,
    json['user_id'] as int,
    json['timestamp'] as String,
  );
}

Map<String, dynamic> _$RevisionToJson(Revision instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user', instance.user);
  writeNotNull('user_id', instance.userId);
  writeNotNull('timestamp', instance.timestamp);
  return val;
}
