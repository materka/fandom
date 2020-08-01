// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) {
  return Section(
    json['title'] as String,
    json['level'] as int,
    (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : SectionContent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['images'] as List)
        ?.map((e) =>
            e == null ? null : SectionImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SectionToJson(Section instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('level', instance.level);
  writeNotNull('content', instance.content?.map((e) => e?.toJson())?.toList());
  writeNotNull('images', instance.images?.map((e) => e?.toJson())?.toList());
  return val;
}
