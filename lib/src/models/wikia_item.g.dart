// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiaItem _$WikiaItemFromJson(Map<String, dynamic> json) {
  return WikiaItem(
    json['text'] as String,
    json['href'] as String,
    (json['children'] as List)
        ?.map((e) =>
            e == null ? null : ChildrenItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
