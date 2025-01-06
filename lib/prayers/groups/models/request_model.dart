import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'contact_model.dart';

part 'generated/request_model.freezed.dart';
part 'generated/request_model.g.dart';

@freezed
class PrayerRequest with _$PrayerRequest {
  const factory PrayerRequest({
    required int id,
    required String request,
    @JsonKey(name: 'contact') required Contact user,
    @JsonKey(name: 'contact_group') required ContactGroupPairs group,
    @Default("") String? sentiment,
    @Default("") @JsonKey(name: 'created_at') String createdAt,
  }) = _PrayerRequest;

  factory PrayerRequest.fromJson(Map<String, dynamic> json) => _$PrayerRequestFromJson(json);
}