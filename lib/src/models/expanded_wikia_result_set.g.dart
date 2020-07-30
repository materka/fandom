// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_wikia_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedWikiaResultSet _$ExpandedWikiaResultSetFromJson(
    Map<String, dynamic> json) {
  return ExpandedWikiaResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ExpandedWikia.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['batches'] as int,
    json['total'] as int,
    json['currentBatch'] as int,
    json['next'] as int,
  );
}
