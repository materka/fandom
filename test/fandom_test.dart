// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fandom/fandom.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

Function eq = const DeepCollectionEquality().equals;

String getJsonFromFile(String path) {
  var file = File(path);
  return file.readAsStringSync().replaceAll(RegExp(r'\n|\s'), '');
}

String toJsonString(Map<String, dynamic> jsonObject) {
  return jsonEncode(jsonObject).replaceAll(RegExp(r'\n|\s'), '');
}

void main() {
  MockClient jsonProvider;
  Fandom fandom;
  Response response;

  void setResponse(String jsonFile, {int statusCode = 200}) {
    var json = getJsonFromFile(jsonFile);
    response = Response(json, statusCode);
  }

  void expectJson(var object) {
    expect(eq(jsonDecode(response.body), object.toJson()), true);
  }

  setUpAll(() {
    jsonProvider = MockClient((url) {
      return Future.value(response);
    });
    fandom = Fandom('https://test.fandom.com',
        (url) => jsonProvider.get(url).then((value) => jsonDecode(value.body)));
  });

  group('Activity', () {
    test('LatestActivity', () {
      setResponse('test/json/activity_latest_response.json');
      return fandom.activity.latestActivity().then(expectJson);
    });

    test('RecentlyChangedArticles', () {
      setResponse('test/json/activity_recently_changed_articles_response.json');
      return fandom.activity.recentlyChangedArticles().then(expectJson);
    });
  });

  group('Articles', () {
    test('AsSimpleJson', () {
      setResponse('test/json/articles_as_simple_json.json');
      return fandom.articles.asSimpleJson(12345).then(expectJson);
    });

    test('Details', () {
      setResponse('test/json/articles_details.json');
      return fandom.articles.details('12345').then(expectJson);
    });

    test('List', () {
      setResponse('test/json/articles_list.json');
      return fandom.articles.list().then(expectJson);
    });

    test('List (expanded)', () {
      setResponse('test/json/articles_list_expanded.json');
      return fandom.articles.listExpanded().then(expectJson);
    });

    test('MostLinked', () {
      setResponse('test/json/articles_most_linked.json');
      return fandom.articles.mostLinked().then(expectJson);
    });

    test('MostLinked (expanded)', () {
      setResponse('test/json/articles_most_linked_expanded.json');
      return fandom.articles.mostLinkedExpanded().then(expectJson);
    });

    test('New', () {
      setResponse('test/json/articles_new.json');
      return fandom.articles.newArticles().then(expectJson);
    });

    test('Popular', () {
      setResponse('test/json/articles_popular.json');
      return fandom.articles.popular().then(expectJson);
    });

    test('Popular (expanded)', () {
      setResponse('test/json/articles_popular_expanded.json');
      return fandom.articles.popularExpanded().then(expectJson);
    });

    test('Top', () {
      setResponse('test/json/articles_top.json');
      return fandom.articles.top().then(expectJson);
    });

    test('Top (expanded)', () {
      setResponse('test/json/articles_top_expanded.json');
      return fandom.articles.topExpanded().then(expectJson);
    });

    test('TopByHub', () {
      // Seems to be removed from API? Only return 'Bad Request' when testing
      // live APIs
      return true;
    });
  });

  group('Mercury', () {
    test('WikiVariables', () {
      setResponse('test/json/mercury_wiki_variables.json');
      return fandom.mercury.wikiVariables().then(expectJson);
    });
  });

  group('Navigation', () {
    test('Data', () {
      setResponse('test/json/navigation_data.json');
      return fandom.navigation.data().then(expectJson);
    });
  });

  group('RelatedPages', () {
    test('List', () {
      setResponse('test/json/related_pages_list.json');
      return fandom.relatedPages.list('12345').then(expectJson);
    });
  });

  group('Search', () {
    test('Suggestions', () {
      setResponse('test/json/search_suggestions_list.json');
      return fandom.search.suggestions.list('test').then(expectJson);
    });

    test('List', () {
      setResponse('test/json/search_list.json');
      return fandom.search.list('test').then(expectJson);
    });

    test('CrossWiki (expanded)', () {
      setResponse('test/json/search_cross_wiki_expanded.json');
      return fandom.search.crossWikiExpanded('test').then(expectJson);
    });

    test('CrossWiki', () {
      setResponse('test/json/search_cross_wiki.json');
      return fandom.search.crossWiki('test').then(expectJson);
    });
  });

  group('User', () {
    test('Details', () {
      setResponse('test/json/user_details.json');
      return fandom.user.details('1').then(expectJson);
    });

    test('UsersByName', () {
      setResponse('test/json/user_users_by_name.json');
      return fandom.user.usersByName('test').then(expectJson);
    });
  });

  group('WAM', () {
    test('MinMaxWamIndexDate', () {
      setResponse('test/json/wam_min_max_wam_index_date.json');
      return fandom.wam.minMaxWamIndexDate().then(expectJson);
    });

    test('WAMIndex', () {
      setResponse('test/json/wam_wam_index.json');
      return fandom.wam.wamIndex().then(expectJson);
    });

    test('WAMLanguages', () {
      setResponse('test/json/wam_wam_languages.json');
      return fandom.wam.wamLanguages().then(expectJson);
    });
  });

  group('Wikis', () {
    test('ByString', () {
      setResponse('test/json/wikis_by_string.json');
      return fandom.wikis.byString('marvel').then(expectJson);
    });

    test('ByString (expanded)', () {
      setResponse('test/json/wikis_by_string_expanded.json');
      return fandom.wikis.byStringExpanded('marvel').then(expectJson);
    });

    test('Details', () {
      setResponse('test/json/wam_wam_index.json');
      return fandom.wam.wamIndex().then(expectJson);
    });

    test('List', () {
      setResponse('test/json/wam_wam_languages.json');
      return fandom.wam.wamLanguages().then(expectJson);
    });
    test('List (expanded)', () {
      setResponse('test/json/wam_wam_languages.json');
      return fandom.wam.wamLanguages().then(expectJson);
    });
  });
}
