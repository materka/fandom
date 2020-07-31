// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'icon.g.dart';

@JsonSerializable(createToJson: false)
class Icon {
  /// Image URL
  final String url;

  /// Image size (WIDTHxHEIGHT e.g 15x15)
  final String size;

  Icon(this.url, this.size);

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);
}
