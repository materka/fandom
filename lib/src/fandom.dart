// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'resource.dart';

typedef JsonProvider = Future<Map<String, dynamic>> Function(String url);

class Fandom {
  /// Fandom URL
  final String baseUrl;

  /// Callback which will return a json response from a provided
  /// fully qualified Fandom URL
  final JsonProvider jsonProvider;

  ActivityResource _activity;
  MercuryResource _mercury;
  NavigationResource _navigation;
  RelatedPagesResource _relatedPages;
  SearchResource _search;
  UserResource _user;
  ArticlesResource _articles;
  WamResource _wam;
  WikisResource _wikis;

  /// Get information about the latest user activity on the current wiki
  ActivityResource get activity => _activity;

  /// Get simplified article contents
  ArticlesResource get articles => _articles;

  /// get wiki data, including key values, navigation data, and more
  MercuryResource get mercury => _mercury;

  /// Get wiki navigation links (the main menu of given wiki)
  NavigationResource get navigation => _navigation;

  /// Get pages related to a given article ID
  RelatedPagesResource get relatedPages => _relatedPages;

  /// Get results for combined (wiki and cross-wiki) search, and
  /// find suggested phrases for chosen query
  SearchResource get search => _search;

  /// Get details about selected users
  UserResource get user => _user;

  /// Get WAM score starting and last available dates
  WamResource get wam => _wam;

  /// Get wikis which name or topic match a keyword
  WikisResource get wikis => _wikis;

  Fandom._internal(this.baseUrl, this.jsonProvider);

  factory Fandom(String baseUrl, JsonProvider jsonProvider) {
    var instance = Fandom._internal(baseUrl, jsonProvider);
    instance
      .._activity = ActivityResource(instance)
      .._mercury = MercuryResource(instance)
      .._navigation = NavigationResource(instance)
      .._relatedPages = RelatedPagesResource(instance)
      .._search = SearchResource(instance)
      .._user = UserResource(instance);
    return instance;
  }
}
