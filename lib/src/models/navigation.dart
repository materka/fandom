// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'wikia_item.dart';

part 'navigation.g.dart';

@JsonSerializable(createToJson: false)
class Navigation {
  /// Wrapper for navigation objects
  final NavigationItem navigation;

  Navigation(this.navigation);

  factory Navigation.fromJson(Map<String, dynamic> json) =>
      _$NavigationFromJson(json);
}

@JsonSerializable(createToJson: false)
class NavigationItem {
  /// On the wiki navigation bar data
  final List<WikiaItem> wikia;

  /// User set navigation bars
  final List<WikiaItem> wiki;

  NavigationItem(this.wikia, this.wiki);

  factory NavigationItem.fromJson(Map<String, dynamic> json) =>
      _$NavigationItemFromJson(json);
}
