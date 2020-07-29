// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_query_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserQueryResultSet _$UserQueryResultSetFromJson(Map<String, dynamic> json) {
  return UserQueryResultSet(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : UserQuery.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
