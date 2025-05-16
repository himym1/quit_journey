// lib/presentation/features/onboarding/notifiers/quit_settings_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:quit_journey/domain/usecases/save_quit_settings.dart';
import 'package:quit_journey/domain/usecases/mark_onboarding_completed.dart';
import 'package:quit_journey/core/providers/usecase_providers.dart'; // 确保此路径正确

part 'quit_settings_notifier.freezed.dart';

@freezed
class QuitSettingsState with _$QuitSettingsState {
  const factory QuitSettingsState({
    @Default(false) bool isLoading,
    @Default(false) bool isSaved,
    String? error,
  }) = _QuitSettingsState;
}

class QuitSettingsNotifier extends StateNotifier<QuitSettingsState> {
  final SaveQuitSettings _saveQuitSettings;
  final MarkOnboardingCompleted _markOnboardingCompleted;

  QuitSettingsNotifier(this._saveQuitSettings, this._markOnboardingCompleted)
    : super(const QuitSettingsState());

  Future<void> saveSettings(QuitSettingsEntity settings) async {
    state = state.copyWith(isLoading: true, error: null, isSaved: false);
    try {
      // SaveQuitSettings use case should handle associating with the current user
      // by fetching the user ID internally or via its repository.
      await _saveQuitSettings.call(settings);
      await _markOnboardingCompleted.call(); // Mark onboarding as completed
      state = state.copyWith(isLoading: false, isSaved: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        isSaved: false,
      );
    }
  }

  void resetState() {
    state = const QuitSettingsState();
  }

  void resetError() {
    state = state.copyWith(error: null);
  }
}

final quitSettingsNotifierProvider = StateNotifierProvider.autoDispose<
  QuitSettingsNotifier,
  QuitSettingsState
>((ref) {
  final saveQuitSettings = ref.watch(saveQuitSettingsProvider);
  final markOnboardingCompleted = ref.watch(markOnboardingCompletedProvider);
  return QuitSettingsNotifier(saveQuitSettings, markOnboardingCompleted);
});
