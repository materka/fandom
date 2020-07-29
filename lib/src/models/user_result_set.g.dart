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
    json['basePath'] as String,
  );
}
