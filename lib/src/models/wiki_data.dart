// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'navigation.dart';
import 'wiki_language_data.dart';

part 'wiki_data.g.dart';

@JsonSerializable(createToJson: false)
class WikiData {
  final int cacheBuster;
  final String dbName;
  final String defaultSkin;
  final int id;
  final WikiLanguageData language;
  final dynamic namespaces;
  final String sitename;
  final String mainPageTitle;
  final List<String> wikiCategories;
  final Navigation navData;
  final String vertical;
  final String basePath;
  final bool isGASpecialWiki;
  final String articlePath;
  final String facebookAppId;

  WikiData(
      this.cacheBuster,
      this.dbName,
      this.defaultSkin,
      this.id,
      this.language,
      this.namespaces,
      this.sitename,
      this.mainPageTitle,
      this.wikiCategories,
      this.navData,
      this.vertical,
      this.basePath,
      this.isGASpecialWiki,
      this.articlePath,
      this.facebookAppId);

  factory WikiData.fromJson(Map<String, dynamic> json) =>
      _$WikiDataFromJson(json);
}
