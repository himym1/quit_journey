// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quit_settings_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuitSettingsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of QuitSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuitSettingsStateCopyWith<QuitSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuitSettingsStateCopyWith<$Res> {
  factory $QuitSettingsStateCopyWith(
    QuitSettingsState value,
    $Res Function(QuitSettingsState) then,
  ) = _$QuitSettingsStateCopyWithImpl<$Res, QuitSettingsState>;
  @useResult
  $Res call({bool isLoading, bool isSaved, String? error});
}

/// @nodoc
class _$QuitSettingsStateCopyWithImpl<$Res, $Val extends QuitSettingsState>
    implements $QuitSettingsStateCopyWith<$Res> {
  _$QuitSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuitSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSaved = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSaved:
                null == isSaved
                    ? _value.isSaved
                    : isSaved // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuitSettingsStateImplCopyWith<$Res>
    implements $QuitSettingsStateCopyWith<$Res> {
  factory _$$QuitSettingsStateImplCopyWith(
    _$QuitSettingsStateImpl value,
    $Res Function(_$QuitSettingsStateImpl) then,
  ) = __$$QuitSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isSaved, String? error});
}

/// @nodoc
class __$$QuitSettingsStateImplCopyWithImpl<$Res>
    extends _$QuitSettingsStateCopyWithImpl<$Res, _$QuitSettingsStateImpl>
    implements _$$QuitSettingsStateImplCopyWith<$Res> {
  __$$QuitSettingsStateImplCopyWithImpl(
    _$QuitSettingsStateImpl _value,
    $Res Function(_$QuitSettingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuitSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSaved = null,
    Object? error = freezed,
  }) {
    return _then(
      _$QuitSettingsStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSaved:
            null == isSaved
                ? _value.isSaved
                : isSaved // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$QuitSettingsStateImpl implements _QuitSettingsState {
  const _$QuitSettingsStateImpl({
    this.isLoading = false,
    this.isSaved = false,
    this.error,
  });

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaved;
  @override
  final String? error;

  @override
  String toString() {
    return 'QuitSettingsState(isLoading: $isLoading, isSaved: $isSaved, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuitSettingsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSaved, error);

  /// Create a copy of QuitSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuitSettingsStateImplCopyWith<_$QuitSettingsStateImpl> get copyWith =>
      __$$QuitSettingsStateImplCopyWithImpl<_$QuitSettingsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _QuitSettingsState implements QuitSettingsState {
  const factory _QuitSettingsState({
    final bool isLoading,
    final bool isSaved,
    final String? error,
  }) = _$QuitSettingsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSaved;
  @override
  String? get error;

  /// Create a copy of QuitSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuitSettingsStateImplCopyWith<_$QuitSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
