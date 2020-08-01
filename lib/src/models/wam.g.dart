// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wam _$WamFromJson(Map<String, dynamic> json) {
  return Wam(
    json['wam'] as String,
    json['top_1k_weeks'] as String,
    json['hub_wam_rank'] as String,
    json['wam_rank'] as String,
    json['first_peak'] as String,
    json['url'] as String,
    json['hub_name'] as String,
    json['last_peak'] as String,
    json['wiki_image'] as String,
    (json['admins'] as List)
        ?.map(
            (e) => e == null ? null : Admin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['wam_is_new'] as String,
    json['peak_wam_rank'] as String,
    json['wam_change'] as String,
    json['top_1k_days'] as String,
    json['peak_hub_wam_rank'] as String,
    json['wiki_id'] as String,
    json['title'] as String,
    json['vertical_id'] as String,
    json['peak_vertical_wam_rank'] as String,
    json['vertical_name'] as String,
    json['vertical_wam_rank'] as String,
  );
}

Map<String, dynamic> _$WamToJson(Wam instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wam', instance.wam);
  writeNotNull('top_1k_weeks', instance.top1kWeeks);
  writeNotNull('hub_wam_rank', instance.hubWamRank);
  writeNotNull('wam_rank', instance.wamRank);
  writeNotNull('first_peak', instance.firstPeak);
  writeNotNull('url', instance.url);
  writeNotNull('hub_name', instance.hubName);
  writeNotNull('last_peak', instance.lastPeak);
  writeNotNull('wiki_image', instance.wikiImage);
  writeNotNull('admins', instance.admins?.map((e) => e?.toJson())?.toList());
  writeNotNull('wam_is_new', instance.wamIsNew);
  writeNotNull('peak_wam_rank', instance.peakWamRank);
  writeNotNull('wam_change', instance.wamChange);
  writeNotNull('top_1k_days', instance.top1kDays);
  writeNotNull('peak_hub_wam_rank', instance.peakHubWamRank);
  writeNotNull('wiki_id', instance.wikiId);
  writeNotNull('title', instance.title);
  writeNotNull('vertical_id', instance.verticalId);
  writeNotNull('peak_vertical_wam_rank', instance.peakVerticalWamRank);
  writeNotNull('vertical_name', instance.verticalName);
  writeNotNull('vertical_wam_rank', instance.verticalWamRank);
  return val;
}
