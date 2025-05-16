// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_milestone_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HealthMilestone _$HealthMilestoneFromJson(Map<String, dynamic> json) {
  return _HealthMilestone.fromJson(json);
}

/// @nodoc
mixin _$HealthMilestone {
  int get triggerMinutes => throw _privateConstructorUsedError;
  String get medicalIndicator => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this HealthMilestone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthMilestoneCopyWith<HealthMilestone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthMilestoneCopyWith<$Res> {
  factory $HealthMilestoneCopyWith(
    HealthMilestone value,
    $Res Function(HealthMilestone) then,
  ) = _$HealthMilestoneCopyWithImpl<$Res, HealthMilestone>;
  @useResult
  $Res call({int triggerMinutes, String medicalIndicator, String description});
}

/// @nodoc
class _$HealthMilestoneCopyWithImpl<$Res, $Val extends HealthMilestone>
    implements $HealthMilestoneCopyWith<$Res> {
  _$HealthMilestoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerMinutes = null,
    Object? medicalIndicator = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            triggerMinutes:
                null == triggerMinutes
                    ? _value.triggerMinutes
                    : triggerMinutes // ignore: cast_nullable_to_non_nullable
                        as int,
            medicalIndicator:
                null == medicalIndicator
                    ? _value.medicalIndicator
                    : medicalIndicator // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HealthMilestoneImplCopyWith<$Res>
    implements $HealthMilestoneCopyWith<$Res> {
  factory _$$HealthMilestoneImplCopyWith(
    _$HealthMilestoneImpl value,
    $Res Function(_$HealthMilestoneImpl) then,
  ) = __$$HealthMilestoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int triggerMinutes, String medicalIndicator, String description});
}

/// @nodoc
class __$$HealthMilestoneImplCopyWithImpl<$Res>
    extends _$HealthMilestoneCopyWithImpl<$Res, _$HealthMilestoneImpl>
    implements _$$HealthMilestoneImplCopyWith<$Res> {
  __$$HealthMilestoneImplCopyWithImpl(
    _$HealthMilestoneImpl _value,
    $Res Function(_$HealthMilestoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? triggerMinutes = null,
    Object? medicalIndicator = null,
    Object? description = null,
  }) {
    return _then(
      _$HealthMilestoneImpl(
        triggerMinutes:
            null == triggerMinutes
                ? _value.triggerMinutes
                : triggerMinutes // ignore: cast_nullable_to_non_nullable
                    as int,
        medicalIndicator:
            null == medicalIndicator
                ? _value.medicalIndicator
                : medicalIndicator // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthMilestoneImpl implements _HealthMilestone {
  const _$HealthMilestoneImpl({
    required this.triggerMinutes,
    required this.medicalIndicator,
    required this.description,
  });

  factory _$HealthMilestoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthMilestoneImplFromJson(json);

  @override
  final int triggerMinutes;
  @override
  final String medicalIndicator;
  @override
  final String description;

  @override
  String toString() {
    return 'HealthMilestone(triggerMinutes: $triggerMinutes, medicalIndicator: $medicalIndicator, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthMilestoneImpl &&
            (identical(other.triggerMinutes, triggerMinutes) ||
                other.triggerMinutes == triggerMinutes) &&
            (identical(other.medicalIndicator, medicalIndicator) ||
                other.medicalIndicator == medicalIndicator) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, triggerMinutes, medicalIndicator, description);

  /// Create a copy of HealthMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthMilestoneImplCopyWith<_$HealthMilestoneImpl> get copyWith =>
      __$$HealthMilestoneImplCopyWithImpl<_$HealthMilestoneImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthMilestoneImplToJson(this);
  }
}

abstract class _HealthMilestone implements HealthMilestone {
  const factory _HealthMilestone({
    required final int triggerMinutes,
    required final String medicalIndicator,
    required final String description,
  }) = _$HealthMilestoneImpl;

  factory _HealthMilestone.fromJson(Map<String, dynamic> json) =
      _$HealthMilestoneImpl.fromJson;

  @override
  int get triggerMinutes;
  @override
  String get medicalIndicator;
  @override
  String get description;

  /// Create a copy of HealthMilestone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthMilestoneImplCopyWith<_$HealthMilestoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
