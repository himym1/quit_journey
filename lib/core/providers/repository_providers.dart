import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quit_journey/data/repositories_impl/auth_repository_impl.dart';
import 'package:quit_journey/data/repositories_impl/quit_settings_repository_impl.dart';
import 'package:quit_journey/domain/repositories/auth_repository.dart';
import 'package:quit_journey/domain/repositories/quit_settings_repository.dart';
import 'package:quit_journey/domain/repositories/craving_repository.dart'; // 新增导入
import 'package:quit_journey/data/repositories_impl/craving_repository_impl.dart'; // 新增导入
import 'datasource_providers.dart'; // 依赖数据源 providers

// AuthRepository Provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final localDataSource = ref.watch(authLocalDataSourceProvider);
  // 后续可以加入 remoteDataSource 和 networkInfo
  return AuthRepositoryImpl(localDataSource: localDataSource);
});

// QuitSettingsRepository Provider
final quitSettingsRepositoryProvider = Provider<QuitSettingsRepository>((ref) {
  final localDataSource = ref.watch(quitSettingsLocalDataSourceProvider);
  return QuitSettingsRepositoryImpl(localDataSource: localDataSource);
});

// CravingRepository Provider
final cravingRepositoryProvider = Provider<CravingRepository>((ref) {
  final database = ref.watch(appDatabaseProvider); // 依赖 appDatabaseProvider
  return CravingRepositoryImpl(database);
});
