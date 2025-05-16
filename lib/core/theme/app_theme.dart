import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme {
  ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: const Color(0xFF74B9FF), // 清新蓝 from doc
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF74B9FF), // 清新蓝
        brightness: Brightness.light,
        secondary: const Color(
          0xFFFFD3B6,
        ), // 暖黄 from doc (as example for accent)
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF74B9FF),
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      // Define other theme properties like textTheme, buttonTheme, etc.
      fontFamily:
          'Inter', // Example, ensure font is added to pubspec and assets
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF333333),
        ),
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF333333),
        ),
        bodyMedium: TextStyle(fontSize: 14.0, color: Color(0xFF555555)),
        labelLarge: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ), // For buttons
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF74B9FF), // 主色
          foregroundColor: Colors.white, // 文字颜色
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF74B9FF), width: 2),
        ),
        labelStyle: const TextStyle(color: Color(0xFF555555)),
        hintStyle: const TextStyle(color: Color(0xFF999999)),
      ),
    );
  }

  // MVP 阶段可以暂时不实现深色主题，但保留结构
  ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF74B9FF), // 示例，可能需要调整
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF74B9FF),
        brightness: Brightness.dark,
        secondary: const Color(0xFFFFD3B6),
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F), // 示例深色 AppBar
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      fontFamily: 'Inter',
      // Define dark theme specific textTheme, buttonTheme, etc.
    );
  }
}

// Riverpod provider for AppTheme
final appThemeProvider = Provider<AppTheme>((ref) {
  return AppTheme();
});
