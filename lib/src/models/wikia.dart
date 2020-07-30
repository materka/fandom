// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'wikia.g.dart';

@JsonSerializable()
class Wikia {
  /// An internal identification number for Wikia
  final int id;

  /// Wikia name
  final String name;

  /// Wikia language
  final String language;

  /// Wikia base URL
  final String domain;

  Wikia(this.id, this.name, this.language, this.domain);

  factory Wikia.fromJson(Map<String, dynamic> json) => _$WikiaFromJson(json);
}
