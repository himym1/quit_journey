// 在 test/services/health_timeline_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:quit_journey/domain/services/health_timeline_service.dart'; // 确保导入
import 'package:quit_journey/domain/entities/health_milestone_entity.dart'; // 确保导入

void main() {
  group('HealthTimelineService Tests', () {
    late HealthTimelineService service;

    setUp(() {
      service = HealthTimelineService();
    });

    test('generateMilestones should return a non-empty list', () {
      final milestones = service.generateMilestones(DateTime.now());
      expect(milestones, isNotEmpty);
    });

    test(
      'generateMilestones should return at least 3 milestones as per instruction',
      () {
        final milestones = service.generateMilestones(DateTime.now());
        expect(milestones.length, greaterThanOrEqualTo(3));
      },
    );

    test('First milestone should be for 20 minutes', () {
      final milestones = service.generateMilestones(DateTime.now());
      if (milestones.isNotEmpty) {
        expect(milestones.first.triggerMinutes, 20);
        expect(milestones.first.medicalIndicator, '血压脉搏恢复正常');
      }
    });
  });
}
