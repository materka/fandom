// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) {
  return Creator(
    json['avatar'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$CreatorToJson(Creator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  writeNotNull('name', instance.name);
  return val;
}
