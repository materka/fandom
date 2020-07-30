// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'wikia.g.dart';

@JsonSerializable(createToJson: false)
class Wikia {
  /// Wikia name
  final String name;

  /// The absolute URL of the Wikia domain
  final String domain;

  /// An internal identification number for Wikia
  final int id;

  ///  Wikia language
  final String language;

  /// Hub to which wikia belongs
  final String hub;

  /// Topics describing Wikia content
  final String topic;

  Wikia(this.name, this.domain, this.id, this.language, this.hub, this.topic);

  factory Wikia.fromJson(Map<String, dynamic> json) => _$WikiaFromJson(json);
}
