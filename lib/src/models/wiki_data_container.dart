import 'package:json_annotation/json_annotation.dart';

import 'wiki_data.dart';

part 'wiki_data_container.g.dart';

@JsonSerializable(createToJson: false)
class WikiDataContainer {
  final WikiData data;

  WikiDataContainer(this.data);

  factory WikiDataContainer.fromJson(Map<String, dynamic> json) =>
      _$WikiDataContainerFromJson(json);
}
