// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quit_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

QuitSettingsEntity _$QuitSettingsEntityFromJson(Map<String, dynamic> json) {
  return _QuitSettingsEntity.fromJson(json);
}

/// @nodoc
mixin _$QuitSettingsEntity {
  String get userId => throw _privateConstructorUsedError;
  DateTime get quitDateTime => throw _privateConstructorUsedError;
  int get dailyCigarettes => throw _privateConstructorUsedError;
  double get packPrice => throw _privateConstructorUsedError;
  int get cigarettesPerPack => throw _privateConstructorUsedError; // 明确每包香烟支数
  double get dailyCigaretteCost => throw _privateConstructorUsedError;
  DateTime get quitStartTime => throw _privateConstructorUsedError;
  int get nicotineAddictionLevel => throw _privateConstructorUsedError;
  int? get smokingYears => throw _privateConstructorUsedError;
  String? get quitReason => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this QuitSettingsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuitSettingsEntityCopyWith<QuitSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuitSettingsEntityCopyWith<$Res> {
  factory $QuitSettingsEntityCopyWith(
    QuitSettingsEntity value,
    $Res Function(QuitSettingsEntity) then,
  ) = _$QuitSettingsEntityCopyWithImpl<$Res, QuitSettingsEntity>;
  @useResult
  $Res call({
    String userId,
    DateTime quitDateTime,
    int dailyCigarettes,
    double packPrice,
    int cigarettesPerPack,
    double dailyCigaretteCost,
    DateTime quitStartTime,
    int nicotineAddictionLevel,
    int? smokingYears,
    String? quitReason,
    DateTime createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$QuitSettingsEntityCopyWithImpl<$Res, $Val extends QuitSettingsEntity>
    implements $QuitSettingsEntityCopyWith<$Res> {
  _$QuitSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? quitDateTime = null,
    Object? dailyCigarettes = null,
    Object? packPrice = null,
    Object? cigarettesPerPack = null,
    Object? dailyCigaretteCost = null,
    Object? quitStartTime = null,
    Object? nicotineAddictionLevel = null,
    Object? smokingYears = freezed,
    Object? quitReason = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            quitDateTime:
                null == quitDateTime
                    ? _value.quitDateTime
                    : quitDateTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            dailyCigarettes:
                null == dailyCigarettes
                    ? _value.dailyCigarettes
                    : dailyCigarettes // ignore: cast_nullable_to_non_nullable
                        as int,
            packPrice:
                null == packPrice
                    ? _value.packPrice
                    : packPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            cigarettesPerPack:
                null == cigarettesPerPack
                    ? _value.cigarettesPerPack
                    : cigarettesPerPack // ignore: cast_nullable_to_non_nullable
                        as int,
            dailyCigaretteCost:
                null == dailyCigaretteCost
                    ? _value.dailyCigaretteCost
                    : dailyCigaretteCost // ignore: cast_nullable_to_non_nullable
                        as double,
            quitStartTime:
                null == quitStartTime
                    ? _value.quitStartTime
                    : quitStartTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            nicotineAddictionLevel:
                null == nicotineAddictionLevel
                    ? _value.nicotineAddictionLevel
                    : nicotineAddictionLevel // ignore: cast_nullable_to_non_nullable
                        as int,
            smokingYears:
                freezed == smokingYears
                    ? _value.smokingYears
                    : smokingYears // ignore: cast_nullable_to_non_nullable
                        as int?,
            quitReason:
                freezed == quitReason
                    ? _value.quitReason
                    : quitReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuitSettingsEntityImplCopyWith<$Res>
    implements $QuitSettingsEntityCopyWith<$Res> {
  factory _$$QuitSettingsEntityImplCopyWith(
    _$QuitSettingsEntityImpl value,
    $Res Function(_$QuitSettingsEntityImpl) then,
  ) = __$$QuitSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    DateTime quitDateTime,
    int dailyCigarettes,
    double packPrice,
    int cigarettesPerPack,
    double dailyCigaretteCost,
    DateTime quitStartTime,
    int nicotineAddictionLevel,
    int? smokingYears,
    String? quitReason,
    DateTime createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$QuitSettingsEntityImplCopyWithImpl<$Res>
    extends _$QuitSettingsEntityCopyWithImpl<$Res, _$QuitSettingsEntityImpl>
    implements _$$QuitSettingsEntityImplCopyWith<$Res> {
  __$$QuitSettingsEntityImplCopyWithImpl(
    _$QuitSettingsEntityImpl _value,
    $Res Function(_$QuitSettingsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? quitDateTime = null,
    Object? dailyCigarettes = null,
    Object? packPrice = null,
    Object? cigarettesPerPack = null,
    Object? dailyCigaretteCost = null,
    Object? quitStartTime = null,
    Object? nicotineAddictionLevel = null,
    Object? smokingYears = freezed,
    Object? quitReason = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$QuitSettingsEntityImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        quitDateTime:
            null == quitDateTime
                ? _value.quitDateTime
                : quitDateTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        dailyCigarettes:
            null == dailyCigarettes
                ? _value.dailyCigarettes
                : dailyCigarettes // ignore: cast_nullable_to_non_nullable
                    as int,
        packPrice:
            null == packPrice
                ? _value.packPrice
                : packPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        cigarettesPerPack:
            null == cigarettesPerPack
                ? _value.cigarettesPerPack
                : cigarettesPerPack // ignore: cast_nullable_to_non_nullable
                    as int,
        dailyCigaretteCost:
            null == dailyCigaretteCost
                ? _value.dailyCigaretteCost
                : dailyCigaretteCost // ignore: cast_nullable_to_non_nullable
                    as double,
        quitStartTime:
            null == quitStartTime
                ? _value.quitStartTime
                : quitStartTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        nicotineAddictionLevel:
            null == nicotineAddictionLevel
                ? _value.nicotineAddictionLevel
                : nicotineAddictionLevel // ignore: cast_nullable_to_non_nullable
                    as int,
        smokingYears:
            freezed == smokingYears
                ? _value.smokingYears
                : smokingYears // ignore: cast_nullable_to_non_nullable
                    as int?,
        quitReason:
            freezed == quitReason
                ? _value.quitReason
                : quitReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuitSettingsEntityImpl extends _QuitSettingsEntity {
  const _$QuitSettingsEntityImpl({
    required this.userId,
    required this.quitDateTime,
    required this.dailyCigarettes,
    required this.packPrice,
    required this.cigarettesPerPack,
    required this.dailyCigaretteCost,
    required this.quitStartTime,
    required this.nicotineAddictionLevel,
    this.smokingYears,
    this.quitReason,
    required this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _$QuitSettingsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuitSettingsEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final DateTime quitDateTime;
  @override
  final int dailyCigarettes;
  @override
  final double packPrice;
  @override
  final int cigarettesPerPack;
  // 明确每包香烟支数
  @override
  final double dailyCigaretteCost;
  @override
  final DateTime quitStartTime;
  @override
  final int nicotineAddictionLevel;
  @override
  final int? smokingYears;
  @override
  final String? quitReason;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'QuitSettingsEntity(userId: $userId, quitDateTime: $quitDateTime, dailyCigarettes: $dailyCigarettes, packPrice: $packPrice, cigarettesPerPack: $cigarettesPerPack, dailyCigaretteCost: $dailyCigaretteCost, quitStartTime: $quitStartTime, nicotineAddictionLevel: $nicotineAddictionLevel, smokingYears: $smokingYears, quitReason: $quitReason, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuitSettingsEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.quitDateTime, quitDateTime) ||
                other.quitDateTime == quitDateTime) &&
            (identical(other.dailyCigarettes, dailyCigarettes) ||
                other.dailyCigarettes == dailyCigarettes) &&
            (identical(other.packPrice, packPrice) ||
                other.packPrice == packPrice) &&
            (identical(other.cigarettesPerPack, cigarettesPerPack) ||
                other.cigarettesPerPack == cigarettesPerPack) &&
            (identical(other.dailyCigaretteCost, dailyCigaretteCost) ||
                other.dailyCigaretteCost == dailyCigaretteCost) &&
            (identical(other.quitStartTime, quitStartTime) ||
                other.quitStartTime == quitStartTime) &&
            (identical(other.nicotineAddictionLevel, nicotineAddictionLevel) ||
                other.nicotineAddictionLevel == nicotineAddictionLevel) &&
            (identical(other.smokingYears, smokingYears) ||
                other.smokingYears == smokingYears) &&
            (identical(other.quitReason, quitReason) ||
                other.quitReason == quitReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    quitDateTime,
    dailyCigarettes,
    packPrice,
    cigarettesPerPack,
    dailyCigaretteCost,
    quitStartTime,
    nicotineAddictionLevel,
    smokingYears,
    quitReason,
    createdAt,
    updatedAt,
  );

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuitSettingsEntityImplCopyWith<_$QuitSettingsEntityImpl> get copyWith =>
      __$$QuitSettingsEntityImplCopyWithImpl<_$QuitSettingsEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuitSettingsEntityImplToJson(this);
  }
}

abstract class _QuitSettingsEntity extends QuitSettingsEntity {
  const factory _QuitSettingsEntity({
    required final String userId,
    required final DateTime quitDateTime,
    required final int dailyCigarettes,
    required final double packPrice,
    required final int cigarettesPerPack,
    required final double dailyCigaretteCost,
    required final DateTime quitStartTime,
    required final int nicotineAddictionLevel,
    final int? smokingYears,
    final String? quitReason,
    required final DateTime createdAt,
    final DateTime? updatedAt,
  }) = _$QuitSettingsEntityImpl;
  const _QuitSettingsEntity._() : super._();

  factory _QuitSettingsEntity.fromJson(Map<String, dynamic> json) =
      _$QuitSettingsEntityImpl.fromJson;

  @override
  String get userId;
  @override
  DateTime get quitDateTime;
  @override
  int get dailyCigarettes;
  @override
  double get packPrice;
  @override
  int get cigarettesPerPack; // 明确每包香烟支数
  @override
  double get dailyCigaretteCost;
  @override
  DateTime get quitStartTime;
  @override
  int get nicotineAddictionLevel;
  @override
  int? get smokingYears;
  @override
  String? get quitReason;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuitSettingsEntityImplCopyWith<_$QuitSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
