// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wam_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WamResultSet _$WamResultSetFromJson(Map<String, dynamic> json) {
  return WamResultSet(
    (json['items'] as List)
        ?.map((e) => e == null ? null : Wam.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['totalResults'] as int,
    json['indexDate'],
  );
}
