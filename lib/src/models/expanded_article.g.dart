// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedArticle _$ExpandedArticleFromJson(Map<String, dynamic> json) {
  return ExpandedArticle(
    json['original_dimensions'] == null
        ? null
        : ImageSize.fromJson(
            json['original_dimensions'] as Map<String, dynamic>),
    json['url'] as String,
    json['ns'] as int,
    json['abstract'] as String,
    json['thumbnail'] as String,
    json['revision'] == null
        ? null
        : Revision.fromJson(json['revision'] as Map<String, dynamic>),
    json['id'] as int,
    json['title'] as String,
    json['type'] as String,
    json['comments'] as int,
  );
}
