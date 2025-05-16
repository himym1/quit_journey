import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_strategy_entity.freezed.dart';
part 'emergency_strategy_entity.g.dart';

@freezed
class EmergencyStrategyEntity with _$EmergencyStrategyEntity {
  const factory EmergencyStrategyEntity({
    required String id,
    required String title,
    required String description,
    String? category,
  }) = _EmergencyStrategyEntity;

  factory EmergencyStrategyEntity.fromJson(Map<String, dynamic> json) =>
      _$EmergencyStrategyEntityFromJson(json);
}
