// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionContent _$SectionContentFromJson(Map<String, dynamic> json) {
  return SectionContent(
    json['type'] as String,
    json['text'] as String,
    (json['elements'] as List)
        ?.map((e) =>
            e == null ? null : ListElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SectionContentToJson(SectionContent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('text', instance.text);
  writeNotNull(
      'elements', instance.elements?.map((e) => e?.toJson())?.toList());
  return val;
}
