import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quit_journey/core/providers/usecase_providers.dart';
import 'package:quit_journey/core/router/app_router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkStatusAndNavigate();
  }

  Future<void> _checkStatusAndNavigate() async {
    print('[DEBUG] SplashPage: _checkStatusAndNavigate called.');
    // 给一个短暂的延迟，模拟加载过程，并确保 Widget 完全构建
    await Future.delayed(const Duration(milliseconds: 1500));
    print('[DEBUG] SplashPage: Initial delay completed.');

    if (!mounted) {
      print('[DEBUG] SplashPage: Widget not mounted after delay, returning.');
      return;
    }

    print(
      '[DEBUG] SplashPage: Attempting to read checkOnboardingStatusProvider.',
    );
    final checkOnboarding = ref.read(checkOnboardingStatusProvider);
    print('[DEBUG] SplashPage: checkOnboardingStatusProvider read.');

    print(
      '[DEBUG] SplashPage: Attempting to read getOrCreateAnonymousUserProvider.',
    );
    final getOrCreateUser = ref.read(
      getOrCreateAnonymousUserProvider,
    ); // MVP: 总是获取或创建匿名用户
    print('[DEBUG] SplashPage: getOrCreateAnonymousUserProvider read.');

    try {
      print('[DEBUG] SplashPage: Calling checkOnboarding...');
      final isOnboardingCompleted = await checkOnboarding();
      print(
        '[DEBUG] SplashPage: checkOnboarding completed. Result: $isOnboardingCompleted',
      );

      // 对于MVP，我们总是尝试获取或创建一个匿名用户。
      // 如果用户存在且已完成引导，则直接进入主页。
      // 否则，进入引导页。
      // 登录/注册流程将在后续迭代中处理更复杂的逻辑。
      print('[DEBUG] SplashPage: Calling getOrCreateUser...');
      await getOrCreateUser(); //确保用户存在 (特别是匿名用户ID已生成并保存)
      print('[DEBUG] SplashPage: getOrCreateUser completed.');

      if (isOnboardingCompleted) {
        print('[DEBUG] SplashPage: Onboarding completed, navigating to home.');
        if (mounted) context.go(AppRoute.home.path);
      } else {
        print(
          '[DEBUG] SplashPage: Onboarding NOT completed, navigating to onboarding choice.',
        );
        // 如果 onboarding 未完成，导航到 onboarding choice 页面
        if (mounted) context.go(AppRoute.onboardingChoice.path);
      }
    } catch (e, s) {
      // 发生错误，可以导航到一个错误页面或默认到 onboarding
      print('Error during splash screen checks: $e\nStacktrace: $s');
      // 默认到 onboarding choice 页面
      if (mounted) {
        print(
          '[DEBUG] SplashPage: Error caught, navigating to onboarding choice.',
        );
        context.go(AppRoute.onboardingChoice.path);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('焕新之旅，正在启动...'),
          ],
        ),
      ),
    );
  }
}
