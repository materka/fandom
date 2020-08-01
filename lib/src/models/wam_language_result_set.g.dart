// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wam_language_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WamLanguageResultSet _$WamLanguageResultSetFromJson(Map<String, dynamic> json) {
  return WamLanguageResultSet(
    (json['languages'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$WamLanguageResultSetToJson(
    WamLanguageResultSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('languages', instance.items);
  return val;
}
