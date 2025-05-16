import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_milestone_entity.freezed.dart';
part 'health_milestone_entity.g.dart';

@freezed
class HealthMilestone with _$HealthMilestone {
  const factory HealthMilestone({
    required int triggerMinutes,
    required String medicalIndicator,
    required String description,
    // String? iconAsset, // 暂时注释掉，根据服务层代码，这个字段没有用到
  }) = _HealthMilestone;

  factory HealthMilestone.fromJson(Map<String, dynamic> json) =>
      _$HealthMilestoneFromJson(json);
}
