import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:quit_journey/domain/repositories/quit_settings_repository.dart';

class SaveQuitSettings {
  final QuitSettingsRepository repository;

  SaveQuitSettings(this.repository);

  Future<void> call(QuitSettingsEntity settings) async {
    await repository.saveQuitSettings(settings);
  }
}
