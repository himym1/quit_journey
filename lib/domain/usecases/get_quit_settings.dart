import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:quit_journey/domain/repositories/quit_settings_repository.dart';

class GetQuitSettings {
  final QuitSettingsRepository repository;

  GetQuitSettings(this.repository);

  Future<QuitSettingsEntity?> call(String userId) async {
    return await repository.getQuitSettings(userId);
  }
}
