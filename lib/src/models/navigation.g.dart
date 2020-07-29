// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Navigation _$NavigationFromJson(Map<String, dynamic> json) {
  return Navigation(
    json['navigation'] == null
        ? null
        : NavigationItem.fromJson(json['navigation'] as Map<String, dynamic>),
  );
}

NavigationItem _$NavigationItemFromJson(Map<String, dynamic> json) {
  return NavigationItem(
    (json['wikia'] as List)
        ?.map((e) =>
            e == null ? null : WikiaItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['wiki'] as List)
        ?.map((e) =>
            e == null ? null : WikiaItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
