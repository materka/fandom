// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_query_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserQueryResultSet _$UserQueryResultSetFromJson(Map<String, dynamic> json) {
  return UserQueryResultSet(
    (json['users'] as List)
        ?.map((e) =>
            e == null ? null : UserQuery.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserQueryResultSetToJson(UserQueryResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.items?.map((e) => e?.toJson())?.toList());
  return val;
}
