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
