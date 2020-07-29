// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/resource.dart';

typedef JsonProvider = Future<Map<String, dynamic>> Function(String url);

class Fandom {
  /// Fandom URL
  final String baseUrl;

  /// Callback which will return a json response from a provided fully qualified Fandom URL
  final JsonProvider jsonProvider;

  ActivityResource _activity;
  MercuryResource _mercury;
  NavigationResource _navigation;
  RelatedPagesResource _relatedPages;
  SearchResource _search;
  UserResource _user;

  ActivityResource get activity => _activity;

  MercuryResource get mercury => _mercury;

  NavigationResource get navigation => _navigation;

  RelatedPagesResource get relatedPages => _relatedPages;

  SearchResource get search => _search;

  UserResource get user => _user;

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
