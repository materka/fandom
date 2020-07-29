// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_response_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityResponseResultSet _$ActivityResponseResultSetFromJson(
    Map<String, dynamic> json) {
  return ActivityResponseResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ActivityResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['basePath'] as String,
  );
}
