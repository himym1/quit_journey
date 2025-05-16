import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:quit_journey/core/providers/repository_providers.dart';
import 'package:quit_journey/core/providers/service_providers.dart';
import 'package:quit_journey/core/theme/app_theme.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final duration = ref.watch(timerStateNotifierProvider);
    final settings = ref.watch(quitSettingsRepositoryProvider).currentSettings;
    final savings = ref
        .read(progressCalculatorServiceProvider)
        .calculateSavings(settings.dailyCigaretteCost ?? 0.0);

    return Scaffold(
      appBar: AppBar(title: const Text('戒烟进度看板')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProgressChart(duration),
            const SizedBox(height: 20),
            _buildStatsGrid(duration, savings),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressChart(Duration duration) {
    final totalMinutes = duration.inMinutes;
    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: totalMinutes.toDouble(),
              color: AppTheme.primaryColor,
              showTitle: false,
              radius: 25,
            ),
            PieChartSectionData(
              value: (1440 - totalMinutes % 1440).toDouble(),
              color: Colors.grey[300],
              showTitle: false,
              radius: 20,
            ),
          ],
          centerSpaceRadius: 40,
          sectionsSpace: 0,
        ),
      ),
    );
  }

  Widget _buildStatsGrid(Duration duration, double savings) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        _buildStatCard(
          '已戒烟时间',
          '${duration.inDays}天\n${duration.inHours.remainder(24)}小时',
        ),
        _buildStatCard('节省金额', '¥${savings.toStringAsFixed(2)}'),
        _buildStatCard('健康改善', '心率下降\n血压正常'),
        _buildStatCard(
          '目标达成',
          '${(duration.inDays / 30 * 100).toStringAsFixed(1)}%',
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
