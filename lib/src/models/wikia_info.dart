// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'wikia_info.g.dart';

@JsonSerializable()
class WikiaInfo {
  /// An internal identification number for Wikia
  final int id;

  /// Wikia name
  final String name;

  /// Wikia language
  final String language;

  /// Wikia base URL
  final String domain;

  WikiaInfo(this.id, this.name, this.language, this.domain);

  factory WikiaInfo.fromJson(Map<String, dynamic> json) =>
      _$WikiaInfoFromJson(json);

  Map<String, dynamic> toJson() => _$WikiaInfoToJson(this);
}
