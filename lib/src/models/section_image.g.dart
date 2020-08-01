// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionImage _$SectionImageFromJson(Map<String, dynamic> json) {
  return SectionImage(
    json['src'] as String,
    json['caption'] as String,
  );
}

Map<String, dynamic> _$SectionImageToJson(SectionImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('src', instance.src);
  writeNotNull('caption', instance.caption);
  return val;
}
