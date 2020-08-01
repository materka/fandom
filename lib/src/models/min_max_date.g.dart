// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'min_max_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinMaxDate _$MinMaxDateFromJson(Map<String, dynamic> json) {
  return MinMaxDate(
    json['min_date'] as int,
    json['max_date'] as int,
  );
}

Map<String, dynamic> _$MinMaxDateToJson(MinMaxDate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min_date', instance.min);
  writeNotNull('max_date', instance.max);
  return val;
}
