// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? "",
      description: json['summary'] as String? ?? "",
      relatedContactIds: (json['related_contact_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      user: Contact.fromJson(json['contact'] as Map<String, dynamic>),
      group: ContactGroupPairs.fromJson(
          json['contact_group'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String? ?? "",
      followUpRankLabel: json['follow_up_rank_label'] as String? ?? "",
      startRangeOfEventDate: json['start_range_of_event_date'] as String? ?? "",
      endRangeOfEventDate: json['end_range_of_event_date'] as String? ?? "",
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.description,
      'related_contact_ids': instance.relatedContactIds,
      'contact': instance.user,
      'contact_group': instance.group,
      'created_at': instance.createdAt,
      'follow_up_rank_label': instance.followUpRankLabel,
      'start_range_of_event_date': instance.startRangeOfEventDate,
      'end_range_of_event_date': instance.endRangeOfEventDate,
      'score': instance.score,
    };
