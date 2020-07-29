import 'package:json_annotation/json_annotation.dart';

import 'list_element.dart';

part 'section_content.g.dart';

@JsonSerializable(createToJson: false)
class SectionContent {
  /// Content element type can be paragraph or list
  final String type;

  /// Cleaned up paragraph text
  final String text;

  /// Array containing list elements
  final List<ListElement> elements;

  SectionContent(this.type, this.text, this.elements);

  factory SectionContent.fromJson(Map<String, dynamic> json) =>
      _$SectionContentFromJson(json);
}