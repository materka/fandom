// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResultSet _$UserResultSetFromJson(Map<String, dynamic> json) {
  return UserResultSet(
    (json['items'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$UserResultSetToJson(UserResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  writeNotNull('basepath', instance.basePath);
  return val;
}
