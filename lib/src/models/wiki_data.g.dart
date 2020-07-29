// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wiki_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiData _$WikiDataFromJson(Map<String, dynamic> json) {
  return WikiData(
    json['cacheBuster'] as int,
    json['dbName'] as String,
    json['defaultSkin'] as String,
    json['id'] as int,
    json['language'] == null
        ? null
        : WikiLanguageData.fromJson(json['language'] as Map<String, dynamic>),
    json['namespaces'],
    json['sitename'] as String,
    json['mainPageTitle'] as String,
    (json['wikiCategories'] as List)?.map((e) => e as String)?.toList(),
    json['navData'] == null
        ? null
        : Navigation.fromJson(json['navData'] as Map<String, dynamic>),
    json['vertical'] as String,
    json['basePath'] as String,
    json['isGASpecialWiki'] as bool,
    json['articlePath'] as String,
    json['facebookAppId'] as String,
  );
}
