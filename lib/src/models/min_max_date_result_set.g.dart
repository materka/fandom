// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'min_max_date_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinMaxDateResultSet _$MinMaxDateResultSetFromJson(Map<String, dynamic> json) {
  return MinMaxDateResultSet(
    json['min_max_dates'] == null
        ? null
        : MinMaxDate.fromJson(json['min_max_dates'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MinMaxDateResultSetToJson(MinMaxDateResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min_max_dates', instance.minMaxDate?.toJson());
  return val;
}
