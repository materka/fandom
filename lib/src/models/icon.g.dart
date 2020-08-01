// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Icon _$IconFromJson(Map<String, dynamic> json) {
  return Icon(
    json['url'] as String,
    json['size'] as String,
  );
}

Map<String, dynamic> _$IconToJson(Icon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('size', instance.size);
  return val;
}
