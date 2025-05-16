// 在 lib/presentation/features/health_timeline/timeline_page.dart
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:quit_journey/domain/entities/health_milestone_entity.dart'; // 确保导入
// 假设 HealthTimelineService 和 healthTimelineServiceProvider 已经定义并在别处提供
// import 'package:quit_journey/domain/services/health_timeline_service.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart'; // 如果使用Riverpod

class TimelinePage extends StatelessWidget {
  // 或者 StatefulWidget/ConsumerWidget
  const TimelinePage({super.key});

  // 示例：直接使用服务，或者通过Provider获取
  // final HealthTimelineService _timelineService = HealthTimelineService();

  @override
  Widget build(BuildContext context) {
    // 示例：获取里程碑数据
    // final milestones = _timelineService.generateMilestones(DateTime.now());
    // 临时的里程碑数据用于UI构建，实际应从服务获取
    final milestones = [
      HealthMilestone(
        triggerMinutes: 20,
        medicalIndicator: '血压脉搏恢复正常',
        description: '尼古丁水平下降至正常值50%',
      ),
      HealthMilestone(
        triggerMinutes: 480,
        medicalIndicator: '血液中一氧化碳水平降至正常',
        description: '血液中氧气水平恢复正常',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('健康时间轴')),
      body: ListView.builder(
        itemCount: milestones.length,
        itemBuilder: (context, index) {
          final milestone = milestones[index];
          return _buildTimelineItem(
            context,
            milestone,
            index == 0,
            index == milestones.length - 1,
          );
        },
      ),
    );
  }

  Widget _buildTimeIndicator(HealthMilestone milestone) {
    // 根据 triggerMinutes 格式化时间显示，例如 "20分钟后" 或 "8小时后"
    String formattedTime;
    if (milestone.triggerMinutes < 60) {
      formattedTime = '${milestone.triggerMinutes}分钟后';
    } else if (milestone.triggerMinutes < (60 * 24)) {
      formattedTime =
          '${(milestone.triggerMinutes / 60).toStringAsFixed(0)}小时后';
    } else {
      formattedTime =
          '${(milestone.triggerMinutes / (60 * 24)).toStringAsFixed(0)}天后';
    }
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        formattedTime,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildMedicalCard(BuildContext context, HealthMilestone milestone) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              milestone.medicalIndicator,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8.0),
            Text(milestone.description),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineItem(
    BuildContext context,
    HealthMilestone milestone,
    bool isFirst,
    bool isLast,
  ) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.15, // 调整连接线的位置
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 20,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(6),
      ),
      beforeLineStyle: LineStyle(
        color: Theme.of(context).primaryColor.withOpacity(0.5),
      ),
      startChild: _buildTimeIndicator(milestone),
      endChild: _buildMedicalCard(context, milestone),
    );
  }
}
