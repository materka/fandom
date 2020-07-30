// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'navigation_children.g.dart';

@JsonSerializable(createToJson: false)
class NavigationChildren {
  /// Article or special page title
  final String text;

  /// The relative URL of the Page.
  /// Absolute URL: obtained from combining [href] with ResultSet.basepath
  /// attribute from response
  final String href;

  NavigationChildren(this.text, this.href);

  factory NavigationChildren.fromJson(Map<String, dynamic> json) =>
      _$NavigationChildrenFromJson(json);
}
