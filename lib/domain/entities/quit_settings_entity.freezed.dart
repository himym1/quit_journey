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
  String get userId => throw _privateConstructorUsedError; // 关联的用户 ID
  DateTime get quitDateTime => throw _privateConstructorUsedError; // 戒烟开始日期与时间
  int get dailyCigarettes => throw _privateConstructorUsedError; // 每日吸烟量
  double get packPrice => throw _privateConstructorUsedError; // 每包香烟价格
  int? get smokingYears => throw _privateConstructorUsedError; // 烟龄（可选）
  String? get quitReason => throw _privateConstructorUsedError; // 我的戒烟宣言/理由
  DateTime get createdAt => throw _privateConstructorUsedError; // 设置创建时间
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
class _$QuitSettingsEntityImpl implements _QuitSettingsEntity {
  const _$QuitSettingsEntityImpl({
    required this.userId,
    required this.quitDateTime,
    required this.dailyCigarettes,
    required this.packPrice,
    this.smokingYears,
    this.quitReason,
    required this.createdAt,
    this.updatedAt,
  });

  factory _$QuitSettingsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuitSettingsEntityImplFromJson(json);

  @override
  final String userId;
  // 关联的用户 ID
  @override
  final DateTime quitDateTime;
  // 戒烟开始日期与时间
  @override
  final int dailyCigarettes;
  // 每日吸烟量
  @override
  final double packPrice;
  // 每包香烟价格
  @override
  final int? smokingYears;
  // 烟龄（可选）
  @override
  final String? quitReason;
  // 我的戒烟宣言/理由
  @override
  final DateTime createdAt;
  // 设置创建时间
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'QuitSettingsEntity(userId: $userId, quitDateTime: $quitDateTime, dailyCigarettes: $dailyCigarettes, packPrice: $packPrice, smokingYears: $smokingYears, quitReason: $quitReason, createdAt: $createdAt, updatedAt: $updatedAt)';
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

abstract class _QuitSettingsEntity implements QuitSettingsEntity {
  const factory _QuitSettingsEntity({
    required final String userId,
    required final DateTime quitDateTime,
    required final int dailyCigarettes,
    required final double packPrice,
    final int? smokingYears,
    final String? quitReason,
    required final DateTime createdAt,
    final DateTime? updatedAt,
  }) = _$QuitSettingsEntityImpl;

  factory _QuitSettingsEntity.fromJson(Map<String, dynamic> json) =
      _$QuitSettingsEntityImpl.fromJson;

  @override
  String get userId; // 关联的用户 ID
  @override
  DateTime get quitDateTime; // 戒烟开始日期与时间
  @override
  int get dailyCigarettes; // 每日吸烟量
  @override
  double get packPrice; // 每包香烟价格
  @override
  int? get smokingYears; // 烟龄（可选）
  @override
  String? get quitReason; // 我的戒烟宣言/理由
  @override
  DateTime get createdAt; // 设置创建时间
  @override
  DateTime? get updatedAt;

  /// Create a copy of QuitSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuitSettingsEntityImplCopyWith<_$QuitSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
