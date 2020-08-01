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

Map<String, dynamic> _$NavigationToJson(Navigation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('navigation', instance.navigation?.toJson());
  return val;
}

NavigationItem _$NavigationItemFromJson(Map<String, dynamic> json) {
  return NavigationItem(
    (json['wikia'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationLink.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['wiki'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationLink.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NavigationItemToJson(NavigationItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wikia', instance.wikia?.map((e) => e?.toJson())?.toList());
  writeNotNull('wiki', instance.wiki?.map((e) => e?.toJson())?.toList());
  return val;
}
