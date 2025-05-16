// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_choice_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnboardingChoiceState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get anonymousSignInSuccess => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingChoiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingChoiceStateCopyWith<OnboardingChoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingChoiceStateCopyWith<$Res> {
  factory $OnboardingChoiceStateCopyWith(
    OnboardingChoiceState value,
    $Res Function(OnboardingChoiceState) then,
  ) = _$OnboardingChoiceStateCopyWithImpl<$Res, OnboardingChoiceState>;
  @useResult
  $Res call({bool isLoading, String? error, bool anonymousSignInSuccess});
}

/// @nodoc
class _$OnboardingChoiceStateCopyWithImpl<
  $Res,
  $Val extends OnboardingChoiceState
>
    implements $OnboardingChoiceStateCopyWith<$Res> {
  _$OnboardingChoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingChoiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? anonymousSignInSuccess = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            anonymousSignInSuccess:
                null == anonymousSignInSuccess
                    ? _value.anonymousSignInSuccess
                    : anonymousSignInSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnboardingChoiceStateImplCopyWith<$Res>
    implements $OnboardingChoiceStateCopyWith<$Res> {
  factory _$$OnboardingChoiceStateImplCopyWith(
    _$OnboardingChoiceStateImpl value,
    $Res Function(_$OnboardingChoiceStateImpl) then,
  ) = __$$OnboardingChoiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, bool anonymousSignInSuccess});
}

/// @nodoc
class __$$OnboardingChoiceStateImplCopyWithImpl<$Res>
    extends
        _$OnboardingChoiceStateCopyWithImpl<$Res, _$OnboardingChoiceStateImpl>
    implements _$$OnboardingChoiceStateImplCopyWith<$Res> {
  __$$OnboardingChoiceStateImplCopyWithImpl(
    _$OnboardingChoiceStateImpl _value,
    $Res Function(_$OnboardingChoiceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnboardingChoiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? anonymousSignInSuccess = null,
  }) {
    return _then(
      _$OnboardingChoiceStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        anonymousSignInSuccess:
            null == anonymousSignInSuccess
                ? _value.anonymousSignInSuccess
                : anonymousSignInSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$OnboardingChoiceStateImpl implements _OnboardingChoiceState {
  const _$OnboardingChoiceStateImpl({
    this.isLoading = false,
    this.error,
    this.anonymousSignInSuccess = false,
  });

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool anonymousSignInSuccess;

  @override
  String toString() {
    return 'OnboardingChoiceState(isLoading: $isLoading, error: $error, anonymousSignInSuccess: $anonymousSignInSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingChoiceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.anonymousSignInSuccess, anonymousSignInSuccess) ||
                other.anonymousSignInSuccess == anonymousSignInSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, anonymousSignInSuccess);

  /// Create a copy of OnboardingChoiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingChoiceStateImplCopyWith<_$OnboardingChoiceStateImpl>
  get copyWith =>
      __$$OnboardingChoiceStateImplCopyWithImpl<_$OnboardingChoiceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnboardingChoiceState implements OnboardingChoiceState {
  const factory _OnboardingChoiceState({
    final bool isLoading,
    final String? error,
    final bool anonymousSignInSuccess,
  }) = _$OnboardingChoiceStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  bool get anonymousSignInSuccess;

  /// Create a copy of OnboardingChoiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingChoiceStateImplCopyWith<_$OnboardingChoiceStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
