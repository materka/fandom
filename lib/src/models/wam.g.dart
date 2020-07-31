// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wam _$WamFromJson(Map<String, dynamic> json) {
  return Wam(
    (json['wam'] as num)?.toDouble(),
    json['top_1k_weeks'] as int,
    json['hub_wam_rank'] as int,
    json['wam_rank'] as int,
    json['first_peak'] as String,
    json['url'] as String,
    json['hub_name'] as String,
    json['last_peak'] as String,
    json['wiki_image'] as String,
    (json['admins'] as List)
        ?.map(
            (e) => e == null ? null : Admin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['wam_is_new'] as int,
    json['peak_wam_rank'] as int,
    (json['wam_change'] as num)?.toDouble(),
    json['top_1k_days'] as int,
    json['peak_hub_wam_rank'] as int,
    json['wiki_id'] as int,
    json['title'] as String,
    json['vertical_id'] as int,
    json['peak_vertical_wam_rank'] as int,
  );
}
