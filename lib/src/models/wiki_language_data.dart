import 'package:json_annotation/json_annotation.dart';

part 'wiki_language_data.g.dart';

@JsonSerializable(createToJson: false)
class WikiLanguageData {
  final String user;
  final String userDir;
  final String content;
  final String contentDir;

  WikiLanguageData(this.user, this.userDir, this.content, this.contentDir);

  factory WikiLanguageData.fromJson(Map<String, dynamic> json) =>
      _$WikiLanguageDataFromJson(json);
}
