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
    json['localNav'] == null
        ? null
        : Navigation.fromJson(json['localNav'] as Map<String, dynamic>),
    json['vertical'] as String,
    json['basePath'] as String,
    json['isGASpecialWiki'] as bool,
    json['articlePath'] as String,
    json['facebookAppId'] as String,
    json['appleTouchIcon'] == null
        ? null
        : Icon.fromJson(json['appleTouchIcon'] as Map<String, dynamic>),
    json['favicon'] as String,
    json['isClosed'] as bool,
    json['scriptPath'] as String,
    json['surrogateKey'] as String,
    json['image'] as String,
    json['twitterAccount'] as String,
    json['siteMessage'] as String,
    json['recommendedVideoRelatedMediaId'] as String,
    json['recommendedVideoPlaylist'] as String,
    json['qualarooUrl'] as String,
    json['cdnRootUrl'] as String,
    (json['contentNamespaces'] as List)?.map((e) => e as int)?.toList(),
  );
}
