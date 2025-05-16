import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart'; // 新增导入
import 'package:quit_journey/app_widget.dart';
import 'package:quit_journey/core/providers/datasource_providers.dart'; // 新增导入

void main() async {
  // 确保 Flutter 绑定已初始化
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化 SharedPreferences
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  print('[DEBUG] main: SharedPreferences instance obtained in main.');

  // 初始化本地数据库 (Drift) - 如果需要，也应在此处进行
  // final AppDatabase appDatabase = AppDatabase();
  // print('[DEBUG] main: AppDatabase instance created in main.');

  // 初始化 Firebase (如果使用)

  runApp(
    ProviderScope(
      overrides: [
        // 覆盖 sharedPreferencesProvider 以提供已初始化的实例
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        // 如果 AppDatabase 也需要预先初始化并覆盖，可以像这样添加：
        // appDatabaseProvider.overrideWithValue(appDatabase),
      ],
      child: const AppWidget(),
    ),
  );
}
