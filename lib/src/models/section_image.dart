import 'package:json_annotation/json_annotation.dart';

part 'section_image.g.dart';

@JsonSerializable(createToJson: false)
class SectionImage {
  /// Full image URL
  final String src;

  /// Image description
  final String caption;

  SectionImage(this.src, this.caption);

  factory SectionImage.fromJson(Map<String, dynamic> json) =>
      _$SectionImageFromJson(json);
}
