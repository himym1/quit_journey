import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_local_datasource_impl.dart';
import '../../data/datasources/local/app_database.dart';
import '../../data/datasources/quit_settings_local_datasource.dart';
import '../../data/datasources/quit_settings_local_datasource_impl.dart';

// SharedPreferences Provider
// This provider now expects to be overridden in main.dart
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  // This should ideally not be reached if overridden correctly in main.dart
  print('[ERROR] sharedPreferencesProvider was not overridden!'); // 添加日志
  throw UnimplementedError(
    'sharedPreferencesProvider was not overridden. '
    'Ensure SharedPreferences is initialized and provided in main.dart',
  );
});

// AppDatabase Provider (Singleton)
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

// AuthLocalDataSource Provider
final authLocalDataSourceProvider = Provider<AuthLocalDataSource>((ref) {
  print(
    '[DEBUG] authLocalDataSourceProvider: Watching sharedPreferencesProvider...',
  );
  // بما أن sharedPreferencesProvider الآن هو Provider عادي ويتوقع أن يتم تجاوزه،
  // يمكننا الوصول مباشرة إلى قيمته. إذا لم يتم تجاوزه بشكل صحيح في main.dart،
  // فسيتم طرح UnimplementedError من sharedPreferencesProvider نفسه.
  final sharedPrefs = ref.watch(sharedPreferencesProvider);
  print(
    '[DEBUG] authLocalDataSourceProvider: SharedPreferences instance obtained directly.',
  );
  return AuthLocalDataSourceImpl(sharedPreferences: sharedPrefs);
});

// QuitSettingsLocalDataSource Provider
final quitSettingsLocalDataSourceProvider =
    Provider<QuitSettingsLocalDataSource>((ref) {
      final database = ref.watch(appDatabaseProvider);
      return QuitSettingsLocalDataSourceImpl(database: database);
    });
