// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'craving_record_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CravingRecordEntity _$CravingRecordEntityFromJson(Map<String, dynamic> json) {
  return _CravingRecordEntity.fromJson(json);
}

/// @nodoc
mixin _$CravingRecordEntity {
  String get id => throw _privateConstructorUsedError;
  DateTime get occurredAt => throw _privateConstructorUsedError;
  int get intensity => throw _privateConstructorUsedError;
  String? get triggerContext => throw _privateConstructorUsedError;
  String? get copingStrategyUsed => throw _privateConstructorUsedError;
  bool get successfullyResisted => throw _privateConstructorUsedError;

  /// Serializes this CravingRecordEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CravingRecordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CravingRecordEntityCopyWith<CravingRecordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CravingRecordEntityCopyWith<$Res> {
  factory $CravingRecordEntityCopyWith(
    CravingRecordEntity value,
    $Res Function(CravingRecordEntity) then,
  ) = _$CravingRecordEntityCopyWithImpl<$Res, CravingRecordEntity>;
  @useResult
  $Res call({
    String id,
    DateTime occurredAt,
    int intensity,
    String? triggerContext,
    String? copingStrategyUsed,
    bool successfullyResisted,
  });
}

/// @nodoc
class _$CravingRecordEntityCopyWithImpl<$Res, $Val extends CravingRecordEntity>
    implements $CravingRecordEntityCopyWith<$Res> {
  _$CravingRecordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CravingRecordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occurredAt = null,
    Object? intensity = null,
    Object? triggerContext = freezed,
    Object? copingStrategyUsed = freezed,
    Object? successfullyResisted = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            occurredAt:
                null == occurredAt
                    ? _value.occurredAt
                    : occurredAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            intensity:
                null == intensity
                    ? _value.intensity
                    : intensity // ignore: cast_nullable_to_non_nullable
                        as int,
            triggerContext:
                freezed == triggerContext
                    ? _value.triggerContext
                    : triggerContext // ignore: cast_nullable_to_non_nullable
                        as String?,
            copingStrategyUsed:
                freezed == copingStrategyUsed
                    ? _value.copingStrategyUsed
                    : copingStrategyUsed // ignore: cast_nullable_to_non_nullable
                        as String?,
            successfullyResisted:
                null == successfullyResisted
                    ? _value.successfullyResisted
                    : successfullyResisted // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CravingRecordEntityImplCopyWith<$Res>
    implements $CravingRecordEntityCopyWith<$Res> {
  factory _$$CravingRecordEntityImplCopyWith(
    _$CravingRecordEntityImpl value,
    $Res Function(_$CravingRecordEntityImpl) then,
  ) = __$$CravingRecordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    DateTime occurredAt,
    int intensity,
    String? triggerContext,
    String? copingStrategyUsed,
    bool successfullyResisted,
  });
}

/// @nodoc
class __$$CravingRecordEntityImplCopyWithImpl<$Res>
    extends _$CravingRecordEntityCopyWithImpl<$Res, _$CravingRecordEntityImpl>
    implements _$$CravingRecordEntityImplCopyWith<$Res> {
  __$$CravingRecordEntityImplCopyWithImpl(
    _$CravingRecordEntityImpl _value,
    $Res Function(_$CravingRecordEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CravingRecordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occurredAt = null,
    Object? intensity = null,
    Object? triggerContext = freezed,
    Object? copingStrategyUsed = freezed,
    Object? successfullyResisted = null,
  }) {
    return _then(
      _$CravingRecordEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        occurredAt:
            null == occurredAt
                ? _value.occurredAt
                : occurredAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        intensity:
            null == intensity
                ? _value.intensity
                : intensity // ignore: cast_nullable_to_non_nullable
                    as int,
        triggerContext:
            freezed == triggerContext
                ? _value.triggerContext
                : triggerContext // ignore: cast_nullable_to_non_nullable
                    as String?,
        copingStrategyUsed:
            freezed == copingStrategyUsed
                ? _value.copingStrategyUsed
                : copingStrategyUsed // ignore: cast_nullable_to_non_nullable
                    as String?,
        successfullyResisted:
            null == successfullyResisted
                ? _value.successfullyResisted
                : successfullyResisted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CravingRecordEntityImpl implements _CravingRecordEntity {
  const _$CravingRecordEntityImpl({
    required this.id,
    required this.occurredAt,
    required this.intensity,
    this.triggerContext,
    this.copingStrategyUsed,
    required this.successfullyResisted,
  });

  factory _$CravingRecordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CravingRecordEntityImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime occurredAt;
  @override
  final int intensity;
  @override
  final String? triggerContext;
  @override
  final String? copingStrategyUsed;
  @override
  final bool successfullyResisted;

  @override
  String toString() {
    return 'CravingRecordEntity(id: $id, occurredAt: $occurredAt, intensity: $intensity, triggerContext: $triggerContext, copingStrategyUsed: $copingStrategyUsed, successfullyResisted: $successfullyResisted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CravingRecordEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.triggerContext, triggerContext) ||
                other.triggerContext == triggerContext) &&
            (identical(other.copingStrategyUsed, copingStrategyUsed) ||
                other.copingStrategyUsed == copingStrategyUsed) &&
            (identical(other.successfullyResisted, successfullyResisted) ||
                other.successfullyResisted == successfullyResisted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    occurredAt,
    intensity,
    triggerContext,
    copingStrategyUsed,
    successfullyResisted,
  );

  /// Create a copy of CravingRecordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CravingRecordEntityImplCopyWith<_$CravingRecordEntityImpl> get copyWith =>
      __$$CravingRecordEntityImplCopyWithImpl<_$CravingRecordEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CravingRecordEntityImplToJson(this);
  }
}

abstract class _CravingRecordEntity implements CravingRecordEntity {
  const factory _CravingRecordEntity({
    required final String id,
    required final DateTime occurredAt,
    required final int intensity,
    final String? triggerContext,
    final String? copingStrategyUsed,
    required final bool successfullyResisted,
  }) = _$CravingRecordEntityImpl;

  factory _CravingRecordEntity.fromJson(Map<String, dynamic> json) =
      _$CravingRecordEntityImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get occurredAt;
  @override
  int get intensity;
  @override
  String? get triggerContext;
  @override
  String? get copingStrategyUsed;
  @override
  bool get successfullyResisted;

  /// Create a copy of CravingRecordEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CravingRecordEntityImplCopyWith<_$CravingRecordEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
