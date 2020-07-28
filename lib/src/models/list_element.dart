import 'package:json_annotation/json_annotation.dart';

part 'list_element.g.dart';

@JsonSerializable(createToJson: false)
class ListElement {
  /// Cleaned up list element text
  final String text;

  /// Array containing nested list elements
  final List<ListElement> elements;

  ListElement(this.text, this.elements);

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
