// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'icon.dart';
import 'navigation_link.dart';
import 'wiki_language_data.dart';

part 'wiki_data.g.dart';

@JsonSerializable(explicitToJson: true)
class WikiData {
  final int cacheBuster;
  final String dbName;
  final String defaultSkin;
  final int id;
  final WikiLanguageData language;
  final Map<String, String> namespaces;
  final String siteName;
  final String mainPageTitle;
  final List<String> wikiCategories;
  final List<NavigationLink> localNav;
  final String vertical;
  final String basePath;
  final bool isGASpecialWiki;
  final String articlePath;
  final String facebookAppId;
  final Icon appleTouchIcon;

  /// Favicon image URL
  final String favicon;
  final bool isClosed;
  final String scriptPath;
  final String surrogateKey;
  final String image;
  final String twitterAccount;
  final String siteMessage;
  final String recommendedVideoRelatedMediaId;
  final String recommendedVideoPlaylist;
  final String qualarooUrl;
  final String cdnRootUrl;

  // It seems the response can contain both int and String
  final List<dynamic> contentNamespaces;

  WikiData(
      this.cacheBuster,
      this.dbName,
      this.defaultSkin,
      this.id,
      this.language,
      this.namespaces,
      this.siteName,
      this.mainPageTitle,
      this.wikiCategories,
      this.localNav,
      this.vertical,
      this.basePath,
      this.articlePath,
      this.facebookAppId,
      this.appleTouchIcon,
      this.favicon,
      this.scriptPath,
      this.surrogateKey,
      this.image,
      this.twitterAccount,
      this.siteMessage,
      this.recommendedVideoRelatedMediaId,
      this.recommendedVideoPlaylist,
      this.qualarooUrl,
      this.cdnRootUrl,
      this.contentNamespaces,
      {this.isGASpecialWiki,
      this.isClosed});

  factory WikiData.fromJson(Map<String, dynamic> json) =>
      _$WikiDataFromJson(json);

  Map<String, dynamic> toJson() => _$WikiDataToJson(this);
}
