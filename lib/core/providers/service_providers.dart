import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quit_journey/domain/services/progress_calculator_service.dart';
import 'package:quit_journey/domain/services/health_timeline_service.dart';
import 'package:quit_journey/domain/entities/health_milestone_entity.dart'; // 实际应为 HealthMilestone，但文件是 health_milestone_entity.dart
// 假设 QuitSettingsEntity 和 quitSettingsRepositoryProvider 在其他地方定义和导入
// import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
// import 'package:quit_journey/core/providers/repository_providers.dart'; // 假设 quitSettingsRepositoryProvider 在此

// final progressCalculatorServiceProvider = Provider<ProgressCalculatorService>(
//   (ref) => ProgressCalculatorService(),
// );
// 由于 timerStateNotifierProvider 依赖 progressCalculatorServiceProvider，
// 暂时保留其注释掉的定义，或者需要用户确认如何处理。
// 为避免编译错误，如果 progressCalculatorServiceProvider 未定义，下面会报错。
// 假设 progressCalculatorServiceProvider 最终会被正确定义。

final timerStateNotifierProvider = StateNotifierProvider<
  TimerStateNotifier,
  Duration
>((ref) {
  // final service = ref.watch(progressCalculatorServiceProvider); // 这行会报错如果上面未定义
  // 暂时移除对 progressCalculatorServiceProvider 的 watch，或需要用户提供其定义
  // 为了让代码至少在结构上完整，这里假设 service 会以某种方式提供
  // 这部分需要用户澄清或在后续步骤中修复
  final service = ProgressCalculatorService(); // 临时实例化，实际应通过 ref.watch 获取
  return TimerStateNotifier(service);
});

class TimerStateNotifier extends StateNotifier<Duration> {
  final ProgressCalculatorService _service;
  StreamSubscription<Duration>? _subscription;

  TimerStateNotifier(this._service) : super(Duration.zero) {
    _subscription = _service.timerStream.listen((duration) {
      state = duration;
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

final healthTimelineServiceProvider = Provider<HealthTimelineService>(
  (ref) => HealthTimelineService(),
);

// 你可能还需要一个Provider来提供里程碑列表给UI
final healthMilestonesProvider = FutureProvider.autoDispose<
  List<HealthMilestone>
>((ref) async {
  // final quitSettings = await ref.watch(quitSettingsRepositoryProvider).getQuitSettings().first; // 假设你有这个Provider和方法
  // final quitTime = quitSettings?.quitDate; // quitDate 是 QuitSettingsEntity 的一部分
  // 实际应从 quitSettingsRepositoryProvider 获取 quitTime
  // 此处使用 DateTime.now() 作为临时值，直到依赖问题解决
  final DateTime quitTime = DateTime.now();
  // if (quitTime == null) {
  //   return []; // 或者抛出错误，或者返回默认值
  // }
  final timelineService = ref.watch(healthTimelineServiceProvider);
  return timelineService.generateMilestones(quitTime);
});
