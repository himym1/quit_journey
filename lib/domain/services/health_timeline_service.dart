import 'package:quit_journey/domain/entities/health_milestone_entity.dart'; // 确保导入

class HealthTimelineService {
  // 确保类已定义
  List<HealthMilestone> generateMilestones(DateTime quitTime) {
    return [
      HealthMilestone(
        triggerMinutes: 20,
        medicalIndicator: '血压脉搏恢复正常',
        description: '尼古丁水平下降至正常值50%',
      ),
      HealthMilestone(
        triggerMinutes: 60 * 8, // 8小时
        medicalIndicator: '血液中一氧化碳水平降至正常',
        description: '血液中氧气水平恢复正常',
      ),
      HealthMilestone(
        triggerMinutes: 60 * 24, // 24小时
        medicalIndicator: '心脏病发作风险开始降低',
        description: '身体开始清除肺部杂质',
      ),
      // 根据需要添加更多医学里程碑...
    ];
  }
}
