// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrayerRequest _$PrayerRequestFromJson(Map<String, dynamic> json) {
  return _PrayerRequest.fromJson(json);
}

/// @nodoc
mixin _$PrayerRequest {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'request')
  String get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact')
  Contact get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_group')
  ContactGroupPairs get group => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  String? get emotion => throw _privateConstructorUsedError;
  @JsonKey(name: 'prayer_type')
  String? get prayerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds => throw _privateConstructorUsedError;

  /// Serializes this PrayerRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerRequestCopyWith<PrayerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerRequestCopyWith<$Res> {
  factory $PrayerRequestCopyWith(
          PrayerRequest value, $Res Function(PrayerRequest) then) =
      _$PrayerRequestCopyWithImpl<$Res, PrayerRequest>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'request') String description,
      String? title,
      @JsonKey(name: 'contact') Contact user,
      @JsonKey(name: 'contact_group') ContactGroupPairs group,
      String? sentiment,
      String? emotion,
      @JsonKey(name: 'prayer_type') String? prayerType,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'related_contact_ids') List<int> relatedContactIds});

  $ContactCopyWith<$Res> get user;
  $ContactGroupPairsCopyWith<$Res> get group;
}

/// @nodoc
class _$PrayerRequestCopyWithImpl<$Res, $Val extends PrayerRequest>
    implements $PrayerRequestCopyWith<$Res> {
  _$PrayerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? title = freezed,
    Object? user = null,
    Object? group = null,
    Object? sentiment = freezed,
    Object? emotion = freezed,
    Object? prayerType = freezed,
    Object? createdAt = null,
    Object? relatedContactIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Contact,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ContactGroupPairs,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      emotion: freezed == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as String?,
      prayerType: freezed == prayerType
          ? _value.prayerType
          : prayerType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      relatedContactIds: null == relatedContactIds
          ? _value.relatedContactIds
          : relatedContactIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get user {
    return $ContactCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactGroupPairsCopyWith<$Res> get group {
    return $ContactGroupPairsCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerRequestImplCopyWith<$Res>
    implements $PrayerRequestCopyWith<$Res> {
  factory _$$PrayerRequestImplCopyWith(
          _$PrayerRequestImpl value, $Res Function(_$PrayerRequestImpl) then) =
      __$$PrayerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'request') String description,
      String? title,
      @JsonKey(name: 'contact') Contact user,
      @JsonKey(name: 'contact_group') ContactGroupPairs group,
      String? sentiment,
      String? emotion,
      @JsonKey(name: 'prayer_type') String? prayerType,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'related_contact_ids') List<int> relatedContactIds});

  @override
  $ContactCopyWith<$Res> get user;
  @override
  $ContactGroupPairsCopyWith<$Res> get group;
}

/// @nodoc
class __$$PrayerRequestImplCopyWithImpl<$Res>
    extends _$PrayerRequestCopyWithImpl<$Res, _$PrayerRequestImpl>
    implements _$$PrayerRequestImplCopyWith<$Res> {
  __$$PrayerRequestImplCopyWithImpl(
      _$PrayerRequestImpl _value, $Res Function(_$PrayerRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? title = freezed,
    Object? user = null,
    Object? group = null,
    Object? sentiment = freezed,
    Object? emotion = freezed,
    Object? prayerType = freezed,
    Object? createdAt = null,
    Object? relatedContactIds = null,
  }) {
    return _then(_$PrayerRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Contact,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ContactGroupPairs,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      emotion: freezed == emotion
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as String?,
      prayerType: freezed == prayerType
          ? _value.prayerType
          : prayerType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      relatedContactIds: null == relatedContactIds
          ? _value._relatedContactIds
          : relatedContactIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerRequestImpl
    with DiagnosticableTreeMixin
    implements _PrayerRequest {
  const _$PrayerRequestImpl(
      {required this.id,
      @JsonKey(name: 'request') required this.description,
      this.title,
      @JsonKey(name: 'contact') required this.user,
      @JsonKey(name: 'contact_group') required this.group,
      this.sentiment = "",
      this.emotion = "",
      @JsonKey(name: 'prayer_type') this.prayerType,
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'related_contact_ids')
      required final List<int> relatedContactIds})
      : _relatedContactIds = relatedContactIds;

  factory _$PrayerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerRequestImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'request')
  final String description;
  @override
  final String? title;
  @override
  @JsonKey(name: 'contact')
  final Contact user;
  @override
  @JsonKey(name: 'contact_group')
  final ContactGroupPairs group;
  @override
  @JsonKey()
  final String? sentiment;
  @override
  @JsonKey()
  final String? emotion;
  @override
  @JsonKey(name: 'prayer_type')
  final String? prayerType;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<int> _relatedContactIds;
  @override
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds {
    if (_relatedContactIds is EqualUnmodifiableListView)
      return _relatedContactIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedContactIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrayerRequest(id: $id, description: $description, title: $title, user: $user, group: $group, sentiment: $sentiment, emotion: $emotion, prayerType: $prayerType, createdAt: $createdAt, relatedContactIds: $relatedContactIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrayerRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('sentiment', sentiment))
      ..add(DiagnosticsProperty('emotion', emotion))
      ..add(DiagnosticsProperty('prayerType', prayerType))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('relatedContactIds', relatedContactIds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.emotion, emotion) || other.emotion == emotion) &&
            (identical(other.prayerType, prayerType) ||
                other.prayerType == prayerType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._relatedContactIds, _relatedContactIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      title,
      user,
      group,
      sentiment,
      emotion,
      prayerType,
      createdAt,
      const DeepCollectionEquality().hash(_relatedContactIds));

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerRequestImplCopyWith<_$PrayerRequestImpl> get copyWith =>
      __$$PrayerRequestImplCopyWithImpl<_$PrayerRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerRequestImplToJson(
      this,
    );
  }
}

abstract class _PrayerRequest implements PrayerRequest {
  const factory _PrayerRequest(
      {required final int id,
      @JsonKey(name: 'request') required final String description,
      final String? title,
      @JsonKey(name: 'contact') required final Contact user,
      @JsonKey(name: 'contact_group') required final ContactGroupPairs group,
      final String? sentiment,
      final String? emotion,
      @JsonKey(name: 'prayer_type') final String? prayerType,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'related_contact_ids')
      required final List<int> relatedContactIds}) = _$PrayerRequestImpl;

  factory _PrayerRequest.fromJson(Map<String, dynamic> json) =
      _$PrayerRequestImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'request')
  String get description;
  @override
  String? get title;
  @override
  @JsonKey(name: 'contact')
  Contact get user;
  @override
  @JsonKey(name: 'contact_group')
  ContactGroupPairs get group;
  @override
  String? get sentiment;
  @override
  String? get emotion;
  @override
  @JsonKey(name: 'prayer_type')
  String? get prayerType;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds;

  /// Create a copy of PrayerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerRequestImplCopyWith<_$PrayerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerRequestScore _$PrayerRequestScoreFromJson(Map<String, dynamic> json) {
  return _PrayerRequestScore.fromJson(json);
}

/// @nodoc
mixin _$PrayerRequestScore {
  int get id => throw _privateConstructorUsedError;
  String get request => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact')
  Contact get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_group')
  ContactGroupPairs get group => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds => throw _privateConstructorUsedError;

  /// Serializes this PrayerRequestScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerRequestScoreCopyWith<PrayerRequestScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerRequestScoreCopyWith<$Res> {
  factory $PrayerRequestScoreCopyWith(
          PrayerRequestScore value, $Res Function(PrayerRequestScore) then) =
      _$PrayerRequestScoreCopyWithImpl<$Res, PrayerRequestScore>;
  @useResult
  $Res call(
      {int id,
      String request,
      String? title,
      @JsonKey(name: 'contact') Contact user,
      @JsonKey(name: 'contact_group') ContactGroupPairs group,
      String? sentiment,
      double score,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'related_contact_ids') List<int> relatedContactIds});

  $ContactCopyWith<$Res> get user;
  $ContactGroupPairsCopyWith<$Res> get group;
}

/// @nodoc
class _$PrayerRequestScoreCopyWithImpl<$Res, $Val extends PrayerRequestScore>
    implements $PrayerRequestScoreCopyWith<$Res> {
  _$PrayerRequestScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? request = null,
    Object? title = freezed,
    Object? user = null,
    Object? group = null,
    Object? sentiment = freezed,
    Object? score = null,
    Object? createdAt = null,
    Object? relatedContactIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Contact,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ContactGroupPairs,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      relatedContactIds: null == relatedContactIds
          ? _value.relatedContactIds
          : relatedContactIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get user {
    return $ContactCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactGroupPairsCopyWith<$Res> get group {
    return $ContactGroupPairsCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerRequestScoreImplCopyWith<$Res>
    implements $PrayerRequestScoreCopyWith<$Res> {
  factory _$$PrayerRequestScoreImplCopyWith(_$PrayerRequestScoreImpl value,
          $Res Function(_$PrayerRequestScoreImpl) then) =
      __$$PrayerRequestScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String request,
      String? title,
      @JsonKey(name: 'contact') Contact user,
      @JsonKey(name: 'contact_group') ContactGroupPairs group,
      String? sentiment,
      double score,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'related_contact_ids') List<int> relatedContactIds});

  @override
  $ContactCopyWith<$Res> get user;
  @override
  $ContactGroupPairsCopyWith<$Res> get group;
}

/// @nodoc
class __$$PrayerRequestScoreImplCopyWithImpl<$Res>
    extends _$PrayerRequestScoreCopyWithImpl<$Res, _$PrayerRequestScoreImpl>
    implements _$$PrayerRequestScoreImplCopyWith<$Res> {
  __$$PrayerRequestScoreImplCopyWithImpl(_$PrayerRequestScoreImpl _value,
      $Res Function(_$PrayerRequestScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? request = null,
    Object? title = freezed,
    Object? user = null,
    Object? group = null,
    Object? sentiment = freezed,
    Object? score = null,
    Object? createdAt = null,
    Object? relatedContactIds = null,
  }) {
    return _then(_$PrayerRequestScoreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Contact,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ContactGroupPairs,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      relatedContactIds: null == relatedContactIds
          ? _value._relatedContactIds
          : relatedContactIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerRequestScoreImpl
    with DiagnosticableTreeMixin
    implements _PrayerRequestScore {
  const _$PrayerRequestScoreImpl(
      {required this.id,
      required this.request,
      this.title,
      @JsonKey(name: 'contact') required this.user,
      @JsonKey(name: 'contact_group') required this.group,
      this.sentiment = "",
      required this.score,
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'related_contact_ids')
      required final List<int> relatedContactIds})
      : _relatedContactIds = relatedContactIds;

  factory _$PrayerRequestScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerRequestScoreImplFromJson(json);

  @override
  final int id;
  @override
  final String request;
  @override
  final String? title;
  @override
  @JsonKey(name: 'contact')
  final Contact user;
  @override
  @JsonKey(name: 'contact_group')
  final ContactGroupPairs group;
  @override
  @JsonKey()
  final String? sentiment;
  @override
  final double score;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<int> _relatedContactIds;
  @override
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds {
    if (_relatedContactIds is EqualUnmodifiableListView)
      return _relatedContactIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedContactIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrayerRequestScore(id: $id, request: $request, title: $title, user: $user, group: $group, sentiment: $sentiment, score: $score, createdAt: $createdAt, relatedContactIds: $relatedContactIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrayerRequestScore'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('sentiment', sentiment))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('relatedContactIds', relatedContactIds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerRequestScoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._relatedContactIds, _relatedContactIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      request,
      title,
      user,
      group,
      sentiment,
      score,
      createdAt,
      const DeepCollectionEquality().hash(_relatedContactIds));

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerRequestScoreImplCopyWith<_$PrayerRequestScoreImpl> get copyWith =>
      __$$PrayerRequestScoreImplCopyWithImpl<_$PrayerRequestScoreImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerRequestScoreImplToJson(
      this,
    );
  }
}

abstract class _PrayerRequestScore implements PrayerRequestScore {
  const factory _PrayerRequestScore(
      {required final int id,
      required final String request,
      final String? title,
      @JsonKey(name: 'contact') required final Contact user,
      @JsonKey(name: 'contact_group') required final ContactGroupPairs group,
      final String? sentiment,
      required final double score,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'related_contact_ids')
      required final List<int> relatedContactIds}) = _$PrayerRequestScoreImpl;

  factory _PrayerRequestScore.fromJson(Map<String, dynamic> json) =
      _$PrayerRequestScoreImpl.fromJson;

  @override
  int get id;
  @override
  String get request;
  @override
  String? get title;
  @override
  @JsonKey(name: 'contact')
  Contact get user;
  @override
  @JsonKey(name: 'contact_group')
  ContactGroupPairs get group;
  @override
  String? get sentiment;
  @override
  double get score;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'related_contact_ids')
  List<int> get relatedContactIds;

  /// Create a copy of PrayerRequestScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerRequestScoreImplCopyWith<_$PrayerRequestScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
