import 'package:json_annotation/json_annotation.dart';

import 'image_size.dart';
import 'wikia_stats.dart';

part 'expanded_cross_wikia.g.dart';

@JsonSerializable(createToJson: false)
class ExpandedCrossWikia {
  /// Wikia headline
  final String headline;

  /// Description about Wikia content
  final String desc;

  /// Wikia title
  final WikiaStats stats;

  /// Object containing original image dimensions
  @JsonKey(name: 'original_dimensions')
  final ImageSize originalDimensions;

  /// The absolute URL of the Wikia
  final String url;

  /// The absolute URL of the Wikia image
  final String image;

  /// Array with flags
  final List<String> flags;

  /// Wiki WAM score
  final double wam_score;

  /// An internal identification number for Wikia
  final int id;

  /// Array with ten top contributors
  final String topUsers;

  /// Wiki wordmark image URL, might be empty
  final String wordmark;

  /// Wikia title
  final String title;

  /// Wikia language
  final String lang;

  ExpandedCrossWikia(
      this.headline,
      this.desc,
      this.stats,
      this.originalDimensions,
      this.url,
      this.image,
      this.flags,
      this.wam_score,
      this.id,
      this.topUsers,
      this.wordmark,
      this.title,
      this.lang);

  factory ExpandedCrossWikia.fromJson(Map<String, dynamic> json) =>
      _$ExpandedCrossWikiaFromJson(json);
}
