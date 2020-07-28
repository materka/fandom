import 'package:json_annotation/json_annotation.dart';

part 'children_item.g.dart';

@JsonSerializable(createToJson: false)
class ChildrenItem {
  /// Article or special page title
  final String text;

  /// The relative URL of the Page. Absolute URL: obtained from combining relative URL with basepath attribute from response
  final String href;

  ChildrenItem(this.text, this.href);

  factory ChildrenItem.fromJson(Map<String, dynamic> json) =>
      _$ChildrenItemFromJson(json);
}
