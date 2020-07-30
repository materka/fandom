// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'min_max_date_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinMaxDateResultSet _$MinMaxDateResultSetFromJson(Map<String, dynamic> json) {
  return MinMaxDateResultSet(
    (json['items'] as List)
        ?.map((e) =>
            e == null ? null : MinMaxDate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
