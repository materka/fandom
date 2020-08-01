// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'section_image.g.dart';

@JsonSerializable()
class SectionImage {
  /// Absolute image URL
  final String src;

  /// Image description
  final String caption;

  SectionImage(this.src, this.caption);

  factory SectionImage.fromJson(Map<String, dynamic> json) =>
      _$SectionImageFromJson(json);

  Map<String, dynamic> toJson() => _$SectionImageToJson(this);
}
