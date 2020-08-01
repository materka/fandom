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
    json['basepath'] as String,
  );
}

Map<String, dynamic> _$ActivityResponseResultSetToJson(
    ActivityResponseResultSet instance) {
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
