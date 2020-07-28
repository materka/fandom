import 'package:json_annotation/json_annotation.dart';

import 'children_item.dart';

part 'wikia_item.g.dart';

@JsonSerializable(createToJson: false)
class WikiaItem {
  /// On wiki navigation bar text
  final String text;

  /// // The relative URL of the Page. Absolute URL: obtained from combining relative URL with basepath attribute from response
  final String href;

  /// Children collection containing article or special pages data
  final List<ChildrenItem> children;

  WikiaItem(this.text, this.href, this.children);

  factory WikiaItem.fromJson(Map<String, dynamic> json) =>
      _$WikiaItemFromJson(json);
}
