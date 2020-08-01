// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'image_size.g.dart';

@JsonSerializable()
class ImageSize {
  final dynamic width;
  final dynamic height;

  ImageSize(this.width, this.height);

  factory ImageSize.fromJson(Map<String, dynamic> json) =>
      _$ImageSizeFromJson(json);

  Map<String, dynamic> toJson() => _$ImageSizeToJson(this);
}
