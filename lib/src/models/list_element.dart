// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'list_element.g.dart';

@JsonSerializable(explicitToJson: true)
class ListElement {
  /// Cleaned up list element text
  final String text;

  /// Array containing nested list elements
  final List<ListElement> elements;

  ListElement(this.text, this.elements);

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);

  Map<String, dynamic> toJson() => _$ListElementToJson(this);
}
