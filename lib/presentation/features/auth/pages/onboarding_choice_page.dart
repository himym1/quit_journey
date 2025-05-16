// lib/presentation/features/auth/pages/onboarding_choice_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quit_journey/core/router/app_router.dart'; // 导入路由定义
import 'package:quit_journey/presentation/features/auth/notifiers/onboarding_choice_notifier.dart';
// 假设 QuitSettingsPage 的路由已在 AppRouter 中定义
// import 'package:quit_journey/presentation/features/onboarding/pages/quit_settings_page.dart';

class OnboardingChoicePage extends ConsumerWidget {
  const OnboardingChoicePage({super.key});

  static const String routeName = 'onboardingChoice'; // 用于路由定义
  static const String routePath = '/onboarding-choice'; // GoRouter 使用的路径

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingChoiceNotifierProvider);
    final notifier = ref.read(onboardingChoiceNotifierProvider.notifier);

    ref.listen<OnboardingChoiceState>(onboardingChoiceNotifierProvider, (
      previous,
      next,
    ) {
      if (next.error != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('错误: ${next.error}')));
      }
      if (next.anonymousSignInSuccess) {
        // 导航到戒烟设置页面
        // 确保 AppRoute.quitSettings.name 存在且正确
        context.goNamed(AppRoute.quitSettings.name);
        notifier.resetStateAfterNavigation(); // 重置状态避免重复导航
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('开始您的焕新之旅')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (state.isLoading)
                const Center(child: CircularProgressIndicator())
              else ...[
                ElevatedButton(
                  onPressed: () async {
                    await notifier.signInAnonymously();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('匿名使用', style: TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    // MVP 阶段，此功能暂缓
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('注册/登录功能开发中')));
                    // context.goNamed(AppRoute.placeholder.name); // 导航到占位页面
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('注册/登录', style: TextStyle(fontSize: 18)),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
