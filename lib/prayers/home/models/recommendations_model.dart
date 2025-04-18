import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:prayer_ml/prayers/groups/models/collection_model.dart';
import 'package:prayer_ml/prayers/groups/models/group_model.dart';

part 'generated/recommendations_model.freezed.dart';
part 'generated/recommendations_model.g.dart';

@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    @JsonKey(name: "recommendation_type") required String recommendationType,
    required Group group,
    @JsonKey(name: "prayer_collection") required Collection prayerCollection,
    @JsonKey(name: "default_snooze_days") required int defaultSnoozeDays,
    @JsonKey(name: "is_snoozed") required bool isSnoozed,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "snooze_until") DateTime? snoozeUntil,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);
}