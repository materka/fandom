// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'dart:math';

import 'fandom.dart';
import 'models/activity_response_result_set.dart';
import 'models/article_result_set.dart';
import 'models/combined_search_result_set.dart';
import 'models/content.dart';
import 'models/expanded_article_result_set.dart';
import 'models/expanded_cross_wikia_result_set.dart';
import 'models/hub_article_result_set.dart';
import 'models/local_wiki_search_result_set.dart';
import 'models/min_max_date_result_set.dart';
import 'models/most_linked_article_result_set.dart';
import 'models/most_linked_expanded_article_result_set.dart';
import 'models/navigation.dart';
import 'models/new_article_result_set.dart';
import 'models/related_page_result_set.dart';
import 'models/search_suggestion_result_set.dart';
import 'models/user_query_result_set.dart';
import 'models/user_result_set.dart';
import 'models/wam_language_result_set.dart';
import 'models/wam_result_set.dart';
import 'models/wiki_data_container.dart';

abstract class Resource<T extends Resource<T>> {
  final Fandom _fandom;

  Resource(this._fandom);

  String path();

  Future<Map<String, dynamic>> _get(String action, {Map parameters}) async {
    String url = '${_fandom.baseUrl}/api/v1/${path()}/$action';
    if (parameters != null) {
      String params = parameters.entries
          .where((e) => e.value != null)
          .map((e) => '${e.key}=${e.value}')
          .join('&');
      url += '?$params';
    }
    return _fandom.jsonProvider(url);
  }
}

/// Get details about selected users
class UserResource extends Resource<UserResource> {
  UserResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'User';

  /// Get details about selected users
  ///
  /// [ids] - Comma-separated list of user ids. Maximum size of id list is 100\
  /// [size] - The desired width (and height, because it is a square) for\
  /// the thumbnail, defaults to 100, 0 for no thumbnail
  Future<UserResultSet> details({String ids = '', int size = 100}) async =>
      _get('Details', parameters: {'ids': ids, 'size': size})
          .then((json) => UserResultSet.fromJson(json));

  /// Query for users whose name matches the given prefix
  ///
  /// [query] - User name prefix to query for (max 255 characters)\
  /// [limit] - Limit the number of results
  Future<UserQueryResultSet> usersByName(String query, {int limit}) async =>
      _get('UsersByName', parameters: {'query': query, 'limit': limit})
          .then((json) => UserQueryResultSet.fromJson(json));
}

/// Get results for combined (wiki and cross-wiki) search
class SearchResource extends Resource<SearchResource> {
  final SearchSuggestionsResource _suggestions;

  SearchSuggestionsResource get suggestions => _suggestions;

  SearchResource(Fandom fandom)
      : _suggestions = SearchSuggestionsResource(fandom),
        super(fandom);

  @override
  String path() => 'Search';

  /// Get results for combined (wiki and cross-wiki) search
  ///
  /// [query] - Search query\
  /// [langs] - Comma separated language codes (e.g. en,de,fr). Default en\
  /// [hubs] - Comma-separated list of verticals (e.g. Gaming, Entertainment)\
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [limit] - Limit number of articles returned\
  /// [minArticleQuality] - Minimal value of article quality. Ranges from 0 to 99
  Future<CombinedSearchResultSet> combined(String query,
          {String langs = 'en',
          String hubs,
          String namespaces,
          int limit,
          int minArticleQuality}) async =>
      _get('Combined', parameters: {
        'query': query,
        'langs': langs,
        'hubs': hubs,
        'namespaces': namespaces,
        'limit': limit,
        'minArticleQuality': minArticleQuality != null
            ? min(99, max(0, minArticleQuality))
            : null
      }).then((json) => CombinedSearchResultSet.fromJson(json));

  /// Get results for cross-wiki search (extended response)
  ///
  /// [query] - Search query\
  /// [hub] - Comma-separated list of verticals (e.g. Gaming, Entertainment)\
  /// [lang] - Comma separated language codes (e.g. en,de,fr)\
  /// [rank] - The ranking to use in fetching the list of results, one of default, newest, oldest, recently-modified, stable, most-viewed, freshest, stalest\
  /// [limit] - Limit the number of results\
  /// [batch] - The batch (page) of results to fetch\
  /// [height] - The desired height for the thumbnail\
  /// [width] - The desired width for the thumbnail\
  /// [snippet] - Maximum number of words returned in description
  Future<ExpandedCrossWikiaResultSet> crossWiki(String query,
          {String hub,
          String lang,
          String rank, // TODO: fix enum
          int limit,
          int batch,
          int height,
          int width,
          int snippet}) async =>
      _get('CrossWiki', parameters: {
        'expand': 1,
        'hub': hub,
        'lang': lang,
        'rank': rank,
        'limit': limit,
        'batch': batch,
        'height': height,
        'width': width,
        'snippet': snippet
      }).then((json) => ExpandedCrossWikiaResultSet.fromJson(json));

  /// Search for a given phrase
  ///
  /// [query] - Search query\
  /// [type] - The search type, either articles (default) or videos. For 'videos' value, this parameter should be used with namespaces parameter (namespaces needs to be set to 6)\
  /// [rank] - The ranking to use in fetching the list of results, one of default, newest, oldest, recently-modified, stable, most-viewed, freshest, stalest\
  /// [limit] - Limit the number of results\
  /// [minArticleQuality] - Minimal value of article quality. Ranges from 0 to 99\
  /// [batch] - The batch (page) of results to fetch\
  /// [namespaces] - Page namespace number, see more: http://community.wikia.com/wiki/Help:Namespaces
  Future<LocalWikiSearchResultSet> list(String query,
          {String type = 'articles', // TODO: Fix enum
          String rank, // TODO: fix enum
          int limit,
          int minArticleQuality,
          int batch,
          String namespaces}) async =>
      _get('List', parameters: {
        'query': query,
        'type': type,
        'rank': rank,
        'limit': limit,
        'minArticleQuality': minArticleQuality != null
            ? min(99, max(0, minArticleQuality))
            : null,
        'batch': batch,
        'namespaces': namespaces
      }).then((json) => LocalWikiSearchResultSet.fromJson(json));
}

/// Find suggested phrases for chosen query
class SearchSuggestionsResource extends Resource<SearchSuggestionsResource> {
  SearchSuggestionsResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'SearchSuggestions';

  /// Find suggested phrases for chosen query
  ///
  /// [query] - Search query
  Future<SearchSuggestionResultSet> list(String query) async =>
      _get('List', parameters: {'query': query})
          .then((json) => SearchSuggestionResultSet.fromJson(json));
}

/// Get pages related to given article ID(s)
class RelatedPagesResource extends Resource<RelatedPagesResource> {
  RelatedPagesResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'RelatedPages';

  /// Get pages related to given article ID(s)
  ///
  /// [ids] - Comma-separated list of article ids\
  /// [limit] - Limit the number of results
  Future<RelatedPageResultSet> list({String ids, int limit}) async =>
      _get('List', parameters: {'ids': ids, 'limit': limit})
          .then((json) => RelatedPageResultSet.fromJson(json));
}

/// Get wiki navigation links (the main menu of given wiki)
class NavigationResource extends Resource<NavigationResource> {
  NavigationResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'Navigation';

  /// Get wiki navigation links (the main menu of given wiki)
  Future<Navigation> data() async =>
      _get('Data').then((json) => Navigation.fromJson(json));
}

/// Get wiki data, key values, navigation data etc.
class MercuryResource extends Resource<MercuryResource> {
  MercuryResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'Mercury';

  /// Get wiki data, key values, navigation data etc.
  Future<WikiDataContainer> wikiVariables() async =>
      _get('WikiVariables').then((json) => WikiDataContainer.fromJson(json));
}

/// Get simplified article contents
class ArticlesResource extends Resource<ArticlesResource> {
  ArticlesResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'Articles';

  /// Get simplified article content
  ///
  /// [id] - A single article ID
  Future<Content> asSimpleJson(int id) async =>
      _get('AsSimpleJson').then((json) => Content.fromJson(json));

  /// Get details about one or more articles
  ///
  /// [ids] - Comma-separated list of article ids\
  /// [titles] - Titles with underscores instead of spaces, comma-separated\
  /// [abstract] - The desired length for the article's abstract\
  /// [width] - The desired width for the thumbnail\
  /// [height] - The desired height for the thumbnail
  Future<ExpandedArticleResultSet> details(String ids,
          {String titles, int abstract, int width, int height}) async =>
      _get('Details').then((json) => ExpandedArticleResultSet.fromJson(json));

  /// Get articles in alphabetical order
  ///
  /// [category] - Return only articles belonging to provided valid category title\
  /// [namespaces] - Comma-separated namespace ids, see more: http://community.wikia.com/wiki/Help:Namespaces \
  /// [limit] - Limit the number of results\
  /// [offset] - Lexicographically minimal article title
  Future<ArticleResultSet> list(
          {String category,
          String namespaces,
          int limit,
          String offset}) async =>
      _get('List', parameters: {
        'category': category,
        'namespaces': namespaces,
        'limit': limit,
        'offset': offset
      }).then((json) => ArticleResultSet.fromJson(json));

  /// Get expanded articles in alphabetical order
  ///
  /// [category] - Return only articles belonging to provided valid category title\
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [limit] - Limit the number of results\
  /// [offset] - Lexicographically minimal article title
  Future<ExpandedArticleResultSet> listExpanded(
          {String category,
          String namespaces,
          int limit,
          String offset}) async =>
      _get('List', parameters: {
        'expand': 1,
        'category': category,
        'namespaces': namespaces,
        'limit': limit,
        'offset': offset
      }).then((json) => ExpandedArticleResultSet.fromJson(json));

  /// Get the most linked articles on this wiki (regular article)
  Future<MostLinkedArticleResultSet> mostLinked() async => _get('MostLinked')
      .then((json) => MostLinkedArticleResultSet.fromJson(json));

  /// Get the most linked articles on this wiki (expanded article)
  Future<MostLinkedExpandedArticleResultSet> mostLinkedExpanded() async =>
      _get('MostLinked', parameters: {'expand': 1})
          .then((json) => MostLinkedExpandedArticleResultSet.fromJson(json));

  /// Get newest articles on this wiki
  ///
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [limit] - Limit the number of result - maximum limit is 100\
  /// [minArticleQuality] - Minimal value of article quality. Ranges from 0 to 99
  Future<NewArticleResultSet> newArticles(
          {String namespaces, int limit, int minArticleQuality}) async =>
      _get('New', parameters: {
        'namespaces': namespaces,
        'limit': max(limit, 100),
        'minArticleQuality': minArticleQuality != null
            ? min(99, max(0, minArticleQuality))
            : null
      }).then((json) => NewArticleResultSet.fromJson(json));

  /// Get most popular articles for the current wiki (regular article)
  ///
  /// [limit] - Limit the number of result - maximum limit is 10\
  /// [baseArticleId] - Trending and popular related to article with given id
  Future<ArticleResultSet> popular({int limit, int baseArticleId}) async =>
      _get('Popular', parameters: {
        'limit': max(limit, 10),
        'baseArticleId': baseArticleId
      }).then((json) => ArticleResultSet.fromJson(json));

  /// Get most popular articles for the current wiki (expanded article)
  ///
  /// [limit] - Limit the number of result - maximum limit is 10\
  /// [baseArticleId] - Trending and popular related to article with given id
  Future<ExpandedArticleResultSet> popularExpanded(
          {int limit, int baseArticleId}) async =>
      _get('Popular', parameters: {
        'expand': 1,
        'limit': max(limit, 10),
        'baseArticleId': baseArticleId
      }).then((json) => ExpandedArticleResultSet.fromJson(json));

  /// Get the most viewed articles on this wiki (regular article)
  ///
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [category] - Return only articles belonging to provided valid category title\
  /// [limit] - Limit the number of result - maximum limit is 250\
  /// [baseArticleId] - Trending and popular related to article with given id
  Future<ArticleResultSet> top(
          {String namespaces,
          String category,
          int limit,
          int baseArticleId}) async =>
      _get('Top', parameters: {
        'namepaces': namespaces,
        'category': category,
        'limit': max(limit, 250),
        'baseArticleId': baseArticleId
      }).then((json) => ArticleResultSet.fromJson(json));

  /// Get the most viewed articles on this wiki (expanded article)
  ///
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [category] - Return only articles belonging to provided valid category title\
  /// [limit] - Limit the number of result - maximum limit is 250\
  /// [baseArticleId] - Trending and popular related to article with given id
  Future<ExpandedArticleResultSet> topExpanded(
          {String namespaces,
          String category,
          int limit,
          int baseArticleId}) async =>
      _get('Top', parameters: {
        'expand': 1,
        'namepaces': namespaces,
        'category': category,
        'limit': limit,
        'baseArticleId': baseArticleId
      }).then((json) => ExpandedArticleResultSet.fromJson(json));

  /// Get the top articles by pageviews for a hub
  ///
  /// [hub] - The name of the vertical (e.g. Gaming)\
  /// [lang] - Comma-separated language codes (e.g. en,de,fr)\
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces
  Future<HubArticleResultSet> topByHub(String hub,
          {String lang, String namespaces}) async =>
      _get('TopByHub',
              parameters: {'hub': hub, 'lang': lang, 'namespaces': namespaces})
          .then((json) => HubArticleResultSet.fromJson(json));
}

/// Get information about the latest user activity on the current wiki
class ActivityResource extends Resource<ActivityResource> {
  ActivityResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'Activity';

  /// Get the latest activity information
  ///
  /// [limit] - Limit the number of results\
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [allowDuplicates] - Set if duplicate values of an article's revisions made by the same user are not allowed
  Future<ActivityResponseResultSet> latestActivity(
          {int limit, String namespaces, bool allowDuplicates = true}) async =>
      _get('LatestActivity', parameters: {
        'limit': limit,
        'namespaces': namespaces,
        'allowDuplicates': allowDuplicates
      }).then((json) => ActivityResponseResultSet.fromJson(json));

  /// Get recently changed articles
  ///
  /// [limit] - Limit the number of results\
  /// [namespaces] - Comma-separated namespace ids, see: http://community.wikia.com/wiki/Help:Namespaces \
  /// [allowDuplicates] - Set if duplicates of articles are not allowed
  Future<ActivityResponseResultSet> recentlyChangedArticles(
          {int limit, String namespaces, bool allowDuplicates = true}) async =>
      _get('RecentlyChangedArticles', parameters: {
        'limit': limit,
        'namespaces': namespaces,
        'allowDuplicates': allowDuplicates
      }).then((json) => ActivityResponseResultSet.fromJson(json));
}

/// Get WAM score starting and last available dates
class WamResource extends Resource<WamResource> {
  WamResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'WAM';

  /// Get WAM score starting and last available dates
  Future<MinMaxDateResultSet> minMaxWamIndexDate() async =>
      _get('MinMaxWamIndexDate')
          .then((json) => MinMaxDateResultSet.fromJson(json));

  /// Get WAM index (list of wikis with their WAM ranks)
  ///
  /// [wamDay] - day for which the WAM scores are displayed\
  /// [wamPreviousDay] -day from which the difference in WAM scores is calculated\
  /// [verticalId] -vertical for which wiki list is to be pulled\
  /// [wikiLang] - Language code if narrowing the results to specific language\
  /// [wikiId] - Id of specific wiki to pull\
  /// [wikiWord] - Fragment of url to search for amongst wikis\
  /// [excludeBlacklist] -Determines if exclude blacklisted wikis (with Content Warning enabled)\
  /// [sortColumn] - Column by which to sort (default 'wam')\
  /// [sortDirection] - Sort direction  (default 'asc')\
  /// [offset] - Offset from the beginning of data\
  /// [limit] - limit on fetched number of wikis\
  /// [fetchAdmins] - Determines if admins of each wiki are to be returned (default 'true')\
  /// [avatarSize] - Size of admin avatars in pixels if [fetchAdmins] is enabled\
  /// [fetchWikiImages] - Determines if image of each wiki is to be returned (default 'false')\
  /// [wikiImageWidth] - Width of wiki image in pixels if [fetchWikiImages] is enabled\
  /// [wikiImageHeight] - Height of wiki image in pixels if [fetchWikiImages] is enabled. Pass -1 to keep aspect ratio
  Future<WamResultSet> wamIndex(
          {int wamDay,
          int wamPreviousDay,
          int verticalId,
          String wikiLang,
          int wikiId,
          String wikiWord,
          bool excludeBlacklist,
          String sortColumn = 'wam',
          String sortDirection = 'asc',
          int offset,
          int limit,
          bool fetchAdmins = true,
          int avatarSize,
          bool fetchWikiImages = false,
          int wikiImageWidth,
          int wikiImageHeight}) async =>
      _get('WamIndex', parameters: {
        'wam_day': wamDay,
        'wam_previous_day': wamPreviousDay,
        'vertical_id': verticalId,
        'wiki_lang': wikiLang,
        'wiki_id': wikiId,
        'wiki_word': wikiWord,
        'exclude_blacklist': excludeBlacklist,
        'sort_column': sortColumn,
        'sortDirection': sortDirection,
        'offset': offset,
        'limit': limit,
        'fetch_admins': fetchAdmins,
        'avatar_size': avatarSize,
        'fetchWikiImages': fetchWikiImages,
        'wiki_image_width': wikiImageWidth,
        'wiki_image_height': wikiImageHeight
      }).then((json) => WamResultSet.fromJson(json));

  /// Get language codes of the wikis that are in the WAM ranking for a given day
  ///
  /// [wamDay] - Unix timestamp (in seconds) of the day for the requested\
  /// language code list
  Future<WamLanguageResultSet> wamLanguages({int wamDay}) async =>
      _get('MinMaxWamIndexDate', parameters: {'wam_day': wamDay})
          .then((json) => WamLanguageResultSet.fromJson(json));
}

/// Get wikis which name or topic match a keyword
class WikisResource extends Resource<WikisResource> {
  WikisResource(Fandom fandom) : super(fandom);

  @override
  String path() => 'Wikis';
}
