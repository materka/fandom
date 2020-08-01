// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wam_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WamResultSet _$WamResultSetFromJson(Map<String, dynamic> json) {
  return WamResultSet(
    (json['wam_index'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Wam.fromJson(e as Map<String, dynamic>)),
    ),
    json['wam_results_total'] as String,
    json['wam_index_date'] as int,
    json['wam_actual_date'] as int,
  );
}

Map<String, dynamic> _$WamResultSetToJson(WamResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'wam_index', instance.items?.map((k, e) => MapEntry(k, e?.toJson())));
  writeNotNull('wam_results_total', instance.totalResults);
  writeNotNull('wam_index_date', instance.indexDate);
  writeNotNull('wam_actual_date', instance.actualDate);
  return val;
}
