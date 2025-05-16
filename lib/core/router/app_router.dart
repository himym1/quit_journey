import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quit_journey/core/providers/usecase_providers.dart'; // For onboarding status check
import 'package:quit_journey/presentation/features/splash/pages/splash_page.dart';
import 'package:quit_journey/presentation/features/auth/pages/onboarding_choice_page.dart';
// import 'package:quit_journey/presentation/features/onboarding/pages/quit_settings_page.dart'; // Placeholder for actual page
// import 'package:quit_journey/presentation/features/home/pages/home_page.dart'; // Placeholder

// Using an enum for routes for better type safety and organization
enum AppRoute {
  splash(path: '/', name: 'splash'),
  onboardingChoice(path: '/onboarding-choice', name: 'onboardingChoice'),
  quitSettings(path: '/quit-settings', name: 'quitSettings'), // For戒烟参数设置
  home(path: '/home', name: 'home');

  const AppRoute({required this.path, required this.name});

  final String path;
  final String name;
}

final goRouterProvider = Provider<GoRouter>((ref) {
  // final checkOnboardingStatus = ref.watch(checkOnboardingStatusProvider);
  // final getCurrentUserProfile = ref.watch(getCurrentUserProfileProvider);

  return GoRouter(
    initialLocation: AppRoute.splash.path,
    debugLogDiagnostics: true, // Log navigation for debugging
    routes: [
      GoRoute(
        name: AppRoute.splash.name,
        path: AppRoute.splash.path,
        builder: (context, state) => const SplashPage(),
        // redirect: (context, state) async {
        //   // Logic to redirect based on auth and onboarding status
        //   final isOnboardingDone = await ref.read(checkOnboardingStatusProvider).call();
        //   // final user = await ref.read(getCurrentUserProfileProvider).call(); // Example

        //   // For now, SplashPage handles its own logic via its Notifier
        //   // This redirect might be more complex depending on auth state too.
        //   // if (state.matchedLocation == AppRoute.splash.path) {
        //   //   if (!isOnboardingDone) {
        //   //     return AppRoute.onboardingChoice.path;
        //   //   } else {
        //   //     // Assuming if onboarding is done, user exists (at least anonymous)
        //   //     return AppRoute.home.path;
        //   //   }
        //   // }
        //   return null; // No redirect from splash itself, let SplashPage decide
        // },
      ),
      GoRoute(
        name: AppRoute.onboardingChoice.name,
        path: AppRoute.onboardingChoice.path,
        builder: (context, state) => const OnboardingChoicePage(),
      ),
      GoRoute(
        name: AppRoute.quitSettings.name,
        path: AppRoute.quitSettings.path,
        builder:
            (context, state) => Scaffold(
              // Placeholder for QuitSettingsPage
              appBar: AppBar(title: const Text('戒烟参数设置')),
              body: const Center(child: Text('戒烟参数设置页面 (占位)')),
            ),
      ),
      GoRoute(
        name: AppRoute.home.name,
        path: AppRoute.home.path,
        builder:
            (context, state) => Scaffold(
              // Placeholder HomePage
              appBar: AppBar(title: const Text('主页')),
              body: const Center(child: Text('主页 (占位)')),
            ),
      ),
    ],
    // errorBuilder: (context, state) => ErrorPage(error: state.error), // Optional error page
  );
});
