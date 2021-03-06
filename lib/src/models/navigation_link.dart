// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'navigation_link.g.dart';

@JsonSerializable(explicitToJson: true)
class NavigationLink {
  /// On wiki navigation bar text
  final String text;

  /// // The relative URL of the Page.
  /// Absolute URL: obtained from combining [href] with ResultSet.basePath
  /// attribute from response
  final String href;

  /// Children collection containing article or special pages data
  final List<NavigationLink> children;

  NavigationLink(this.text, this.href, this.children);

  factory NavigationLink.fromJson(Map<String, dynamic> json) =>
      _$NavigationLinkFromJson(json);

  Map<String, dynamic> toJson() => _$NavigationLinkToJson(this);
}
