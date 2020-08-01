// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserQuery _$UserQueryFromJson(Map<String, dynamic> json) {
  return UserQuery(
    json['id'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$UserQueryToJson(UserQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
