// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia_details_result_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiaDetailsResultSet _$WikiaDetailsResultSetFromJson(
    Map<String, dynamic> json) {
  return WikiaDetailsResultSet(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ExpandedWikia.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
