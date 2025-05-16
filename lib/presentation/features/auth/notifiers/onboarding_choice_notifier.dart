// lib/presentation/features/auth/notifiers/onboarding_choice_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quit_journey/domain/usecases/get_or_create_anonymous_user.dart';
import 'package:quit_journey/core/providers/usecase_providers.dart'; // 确保此路径正确

part 'onboarding_choice_notifier.freezed.dart';

@freezed
class OnboardingChoiceState with _$OnboardingChoiceState {
  const factory OnboardingChoiceState({
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool anonymousSignInSuccess,
  }) = _OnboardingChoiceState;
}

class OnboardingChoiceNotifier extends StateNotifier<OnboardingChoiceState> {
  final GetOrCreateAnonymousUser _getOrCreateAnonymousUser;

  OnboardingChoiceNotifier(this._getOrCreateAnonymousUser)
    : super(const OnboardingChoiceState());

  Future<void> signInAnonymously() async {
    state = state.copyWith(
      isLoading: true,
      error: null,
      anonymousSignInSuccess: false,
    );
    try {
      // 假设 GetOrCreateAnonymousUser 的 call 方法不需要参数
      // 如果它需要参数，例如 NoParams，则应传递 NoParams()
      await _getOrCreateAnonymousUser.call();
      state = state.copyWith(isLoading: false, anonymousSignInSuccess: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        anonymousSignInSuccess: false,
      );
    }
  }

  // 可选：用于在用户离开页面或操作完成后重置状态
  void resetStateAfterNavigation() {
    state = state.copyWith(anonymousSignInSuccess: false, error: null);
  }
}

final onboardingChoiceNotifierProvider = StateNotifierProvider.autoDispose<
  OnboardingChoiceNotifier,
  OnboardingChoiceState
>((ref) {
  final getOrCreateAnonymousUser = ref.watch(getOrCreateAnonymousUserProvider);
  return OnboardingChoiceNotifier(getOrCreateAnonymousUser);
});
