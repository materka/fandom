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
            : NavigationLink.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NavigationLinkToJson(NavigationLink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('href', instance.href);
  writeNotNull(
      'children', instance.children?.map((e) => e?.toJson())?.toList());
  return val;
}
