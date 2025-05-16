import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quit_journey/domain/usecases/check_onboarding_status.dart';
import 'package:quit_journey/domain/usecases/get_current_user_profile.dart';
import 'package:quit_journey/domain/usecases/get_or_create_anonymous_user.dart';
import 'package:quit_journey/domain/usecases/get_quit_settings.dart';
import 'package:quit_journey/domain/usecases/mark_onboarding_completed.dart';
import 'package:quit_journey/domain/usecases/save_quit_settings.dart';
import 'repository_providers.dart'; // 依赖仓库 providers

// --- Auth Use Cases ---
final checkOnboardingStatusProvider = Provider<CheckOnboardingStatus>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return CheckOnboardingStatus(repository);
});

final markOnboardingCompletedProvider = Provider<MarkOnboardingCompleted>((
  ref,
) {
  final repository = ref.watch(authRepositoryProvider);
  return MarkOnboardingCompleted(repository);
});

final getOrCreateAnonymousUserProvider = Provider<GetOrCreateAnonymousUser>((
  ref,
) {
  final repository = ref.watch(authRepositoryProvider);
  return GetOrCreateAnonymousUser(repository);
});

final getCurrentUserProfileProvider = Provider<GetCurrentUserProfile>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return GetCurrentUserProfile(repository);
});

// --- Quit Settings Use Cases ---
final getQuitSettingsProvider = Provider<GetQuitSettings>((ref) {
  final repository = ref.watch(quitSettingsRepositoryProvider);
  return GetQuitSettings(repository);
});

final saveQuitSettingsProvider = Provider<SaveQuitSettings>((ref) {
  final repository = ref.watch(quitSettingsRepositoryProvider);
  return SaveQuitSettings(repository);
});
