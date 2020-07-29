// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'section_content.dart';
import 'section_image.dart';

part 'section.g.dart';

@JsonSerializable(createToJson: false)
class Section {
  /// Article section title
  final String title;

  /// Section nesting level
  final int level;

  /// Section content
  final List<SectionContent> content;

  /// Images list in section
  final List<SectionImage> images;

  Section(this.title, this.level, this.content, this.images);

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
