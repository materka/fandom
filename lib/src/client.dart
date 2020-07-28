import 'package:fandom/src/service.dart';

import '../fandom.dart';

class Fandom {
  final String baseUrl;
  final JsonProvider jsonProvider;
  ActivityService _activity;
  MercuryService _mercury;
  NavigationService _navigation;
  RelatedPagesService _relatedPages;
  SearchService _search;
  UserService _user;

  ActivityService get activity => _activity;

  MercuryService get mercury => _mercury;

  NavigationService get navigation => _navigation;

  RelatedPagesService get relatedPages => _relatedPages;

  SearchService get search => _search;

  UserService get user => _user;

  Fandom._internal(this.baseUrl, this.jsonProvider);

  factory Fandom(String baseUrl, JsonProvider jsonProvider) {
    var instance = Fandom._internal(baseUrl, jsonProvider);
    instance
      .._activity = ActivityService(instance)
      .._mercury = MercuryService(instance)
      .._navigation = NavigationService(instance)
      .._relatedPages = RelatedPagesService(instance)
      .._search = SearchService(instance)
      .._user = UserService(instance);
    return instance;
  }
}
