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
    (json['namespaces'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    json['siteName'] as String,
    json['mainPageTitle'] as String,
    (json['wikiCategories'] as List)?.map((e) => e as String)?.toList(),
    (json['localNav'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationLink.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    json['contentNamespaces'] as List,
  );
}

Map<String, dynamic> _$WikiDataToJson(WikiData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cacheBuster', instance.cacheBuster);
  writeNotNull('dbName', instance.dbName);
  writeNotNull('defaultSkin', instance.defaultSkin);
  writeNotNull('id', instance.id);
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('namespaces', instance.namespaces);
  writeNotNull('siteName', instance.siteName);
  writeNotNull('mainPageTitle', instance.mainPageTitle);
  writeNotNull('wikiCategories', instance.wikiCategories);
  writeNotNull(
      'localNav', instance.localNav?.map((e) => e?.toJson())?.toList());
  writeNotNull('vertical', instance.vertical);
  writeNotNull('basePath', instance.basePath);
  writeNotNull('isGASpecialWiki', instance.isGASpecialWiki);
  writeNotNull('articlePath', instance.articlePath);
  writeNotNull('facebookAppId', instance.facebookAppId);
  writeNotNull('appleTouchIcon', instance.appleTouchIcon?.toJson());
  writeNotNull('favicon', instance.favicon);
  writeNotNull('isClosed', instance.isClosed);
  writeNotNull('scriptPath', instance.scriptPath);
  writeNotNull('surrogateKey', instance.surrogateKey);
  writeNotNull('image', instance.image);
  writeNotNull('twitterAccount', instance.twitterAccount);
  writeNotNull('siteMessage', instance.siteMessage);
  writeNotNull('recommendedVideoRelatedMediaId',
      instance.recommendedVideoRelatedMediaId);
  writeNotNull('recommendedVideoPlaylist', instance.recommendedVideoPlaylist);
  writeNotNull('qualarooUrl', instance.qualarooUrl);
  writeNotNull('cdnRootUrl', instance.cdnRootUrl);
  writeNotNull('contentNamespaces', instance.contentNamespaces);
  return val;
}
