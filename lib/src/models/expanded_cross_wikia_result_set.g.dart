// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_cross_wikia_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedCrossWikiaResultSet _$ExpandedCrossWikiaResultSetFromJson(
    Map<String, dynamic> json) {
  return ExpandedCrossWikiaResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ExpandedCrossWikia.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
