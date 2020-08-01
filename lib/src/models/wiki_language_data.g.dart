// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wiki_language_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiLanguageData _$WikiLanguageDataFromJson(Map<String, dynamic> json) {
  return WikiLanguageData(
    json['user'] as String,
    json['userDir'] as String,
    json['content'] as String,
    json['contentDir'] as String,
  );
}

Map<String, dynamic> _$WikiLanguageDataToJson(WikiLanguageData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user);
  writeNotNull('userDir', instance.userDir);
  writeNotNull('content', instance.content);
  writeNotNull('contentDir', instance.contentDir);
  return val;
}
