// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfileEntity _$UserProfileEntityFromJson(Map<String, dynamic> json) {
  return _UserProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$UserProfileEntity {
  String get id =>
      throw _privateConstructorUsedError; // 唯一标识，匿名用户本地生成，注册用户可来自后端
  bool get isAnonymous => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError; // 邮箱，注册用户
  // String? phone, // 手机号，MVP 阶段可暂不实现详细逻辑
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserProfileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileEntityCopyWith<UserProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEntityCopyWith<$Res> {
  factory $UserProfileEntityCopyWith(
    UserProfileEntity value,
    $Res Function(UserProfileEntity) then,
  ) = _$UserProfileEntityCopyWithImpl<$Res, UserProfileEntity>;
  @useResult
  $Res call({String id, bool isAnonymous, String? email, DateTime createdAt});
}

/// @nodoc
class _$UserProfileEntityCopyWithImpl<$Res, $Val extends UserProfileEntity>
    implements $UserProfileEntityCopyWith<$Res> {
  _$UserProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAnonymous = null,
    Object? email = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            isAnonymous:
                null == isAnonymous
                    ? _value.isAnonymous
                    : isAnonymous // ignore: cast_nullable_to_non_nullable
                        as bool,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileEntityImplCopyWith<$Res>
    implements $UserProfileEntityCopyWith<$Res> {
  factory _$$UserProfileEntityImplCopyWith(
    _$UserProfileEntityImpl value,
    $Res Function(_$UserProfileEntityImpl) then,
  ) = __$$UserProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isAnonymous, String? email, DateTime createdAt});
}

/// @nodoc
class __$$UserProfileEntityImplCopyWithImpl<$Res>
    extends _$UserProfileEntityCopyWithImpl<$Res, _$UserProfileEntityImpl>
    implements _$$UserProfileEntityImplCopyWith<$Res> {
  __$$UserProfileEntityImplCopyWithImpl(
    _$UserProfileEntityImpl _value,
    $Res Function(_$UserProfileEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAnonymous = null,
    Object? email = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$UserProfileEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        isAnonymous:
            null == isAnonymous
                ? _value.isAnonymous
                : isAnonymous // ignore: cast_nullable_to_non_nullable
                    as bool,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileEntityImpl implements _UserProfileEntity {
  const _$UserProfileEntityImpl({
    required this.id,
    required this.isAnonymous,
    this.email,
    required this.createdAt,
  });

  factory _$UserProfileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileEntityImplFromJson(json);

  @override
  final String id;
  // 唯一标识，匿名用户本地生成，注册用户可来自后端
  @override
  final bool isAnonymous;
  @override
  final String? email;
  // 邮箱，注册用户
  // String? phone, // 手机号，MVP 阶段可暂不实现详细逻辑
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserProfileEntity(id: $id, isAnonymous: $isAnonymous, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isAnonymous, email, createdAt);

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      __$$UserProfileEntityImplCopyWithImpl<_$UserProfileEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileEntityImplToJson(this);
  }
}

abstract class _UserProfileEntity implements UserProfileEntity {
  const factory _UserProfileEntity({
    required final String id,
    required final bool isAnonymous,
    final String? email,
    required final DateTime createdAt,
  }) = _$UserProfileEntityImpl;

  factory _UserProfileEntity.fromJson(Map<String, dynamic> json) =
      _$UserProfileEntityImpl.fromJson;

  @override
  String get id; // 唯一标识，匿名用户本地生成，注册用户可来自后端
  @override
  bool get isAnonymous;
  @override
  String? get email; // 邮箱，注册用户
  // String? phone, // 手机号，MVP 阶段可暂不实现详细逻辑
  @override
  DateTime get createdAt;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
