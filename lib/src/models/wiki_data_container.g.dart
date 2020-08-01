// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wiki_data_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiDataContainer _$WikiDataContainerFromJson(Map<String, dynamic> json) {
  return WikiDataContainer(
    json['data'] == null
        ? null
        : WikiData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WikiDataContainerToJson(WikiDataContainer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
