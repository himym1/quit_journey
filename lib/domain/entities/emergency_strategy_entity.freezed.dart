// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_strategy_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmergencyStrategyEntity _$EmergencyStrategyEntityFromJson(
  Map<String, dynamic> json,
) {
  return _EmergencyStrategyEntity.fromJson(json);
}

/// @nodoc
mixin _$EmergencyStrategyEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  /// Serializes this EmergencyStrategyEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmergencyStrategyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergencyStrategyEntityCopyWith<EmergencyStrategyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyStrategyEntityCopyWith<$Res> {
  factory $EmergencyStrategyEntityCopyWith(
    EmergencyStrategyEntity value,
    $Res Function(EmergencyStrategyEntity) then,
  ) = _$EmergencyStrategyEntityCopyWithImpl<$Res, EmergencyStrategyEntity>;
  @useResult
  $Res call({String id, String title, String description, String? category});
}

/// @nodoc
class _$EmergencyStrategyEntityCopyWithImpl<
  $Res,
  $Val extends EmergencyStrategyEntity
>
    implements $EmergencyStrategyEntityCopyWith<$Res> {
  _$EmergencyStrategyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergencyStrategyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmergencyStrategyEntityImplCopyWith<$Res>
    implements $EmergencyStrategyEntityCopyWith<$Res> {
  factory _$$EmergencyStrategyEntityImplCopyWith(
    _$EmergencyStrategyEntityImpl value,
    $Res Function(_$EmergencyStrategyEntityImpl) then,
  ) = __$$EmergencyStrategyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description, String? category});
}

/// @nodoc
class __$$EmergencyStrategyEntityImplCopyWithImpl<$Res>
    extends
        _$EmergencyStrategyEntityCopyWithImpl<
          $Res,
          _$EmergencyStrategyEntityImpl
        >
    implements _$$EmergencyStrategyEntityImplCopyWith<$Res> {
  __$$EmergencyStrategyEntityImplCopyWithImpl(
    _$EmergencyStrategyEntityImpl _value,
    $Res Function(_$EmergencyStrategyEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmergencyStrategyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = freezed,
  }) {
    return _then(
      _$EmergencyStrategyEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyStrategyEntityImpl implements _EmergencyStrategyEntity {
  const _$EmergencyStrategyEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    this.category,
  });

  factory _$EmergencyStrategyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyStrategyEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? category;

  @override
  String toString() {
    return 'EmergencyStrategyEntity(id: $id, title: $title, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyStrategyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, category);

  /// Create a copy of EmergencyStrategyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyStrategyEntityImplCopyWith<_$EmergencyStrategyEntityImpl>
  get copyWith => __$$EmergencyStrategyEntityImplCopyWithImpl<
    _$EmergencyStrategyEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyStrategyEntityImplToJson(this);
  }
}

abstract class _EmergencyStrategyEntity implements EmergencyStrategyEntity {
  const factory _EmergencyStrategyEntity({
    required final String id,
    required final String title,
    required final String description,
    final String? category,
  }) = _$EmergencyStrategyEntityImpl;

  factory _EmergencyStrategyEntity.fromJson(Map<String, dynamic> json) =
      _$EmergencyStrategyEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get category;

  /// Create a copy of EmergencyStrategyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmergencyStrategyEntityImplCopyWith<_$EmergencyStrategyEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
