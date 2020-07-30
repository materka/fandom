// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavigationLink _$NavigationLinkFromJson(Map<String, dynamic> json) {
  return NavigationLink(
    json['text'] as String,
    json['href'] as String,
    (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationChildren.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
