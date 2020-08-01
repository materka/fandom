// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageSize _$ImageSizeFromJson(Map<String, dynamic> json) {
  return ImageSize(
    json['width'],
    json['height'],
  );
}

Map<String, dynamic> _$ImageSizeToJson(ImageSize instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}
