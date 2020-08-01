// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

import 'wiki_data.dart';

part 'wiki_data_container.g.dart';

@JsonSerializable(explicitToJson: true)
class WikiDataContainer {
  final WikiData data;

  WikiDataContainer(this.data);

  factory WikiDataContainer.fromJson(Map<String, dynamic> json) =>
      _$WikiDataContainerFromJson(json);

  Map<String, dynamic> toJson() => _$WikiDataContainerToJson(this);
}
