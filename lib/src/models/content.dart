// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'content.g.dart';

@JsonSerializable(createToJson: false)
class Content {
  /// Article section data container
  final List<Section> sections;

  Content(this.sections);

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
