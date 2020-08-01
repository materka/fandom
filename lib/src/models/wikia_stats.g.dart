// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikia_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikiaStats _$WikiaStatsFromJson(Map<String, dynamic> json) {
  return WikiaStats(
    json['users'] as int,
    json['articles'] as int,
    json['pages'] as int,
    json['admins'] as int,
    json['activeUsers'] as int,
    json['edits'] as int,
    json['videos'] as int,
    json['images'] as int,
    json['discussions'] as int,
  );
}

Map<String, dynamic> _$WikiaStatsToJson(WikiaStats instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.users);
  writeNotNull('articles', instance.articles);
  writeNotNull('pages', instance.pages);
  writeNotNull('admins', instance.admins);
  writeNotNull('activeUsers', instance.activeUsers);
  writeNotNull('edits', instance.edits);
  writeNotNull('videos', instance.videos);
  writeNotNull('images', instance.images);
  writeNotNull('discussions', instance.discussions);
  return val;
}
