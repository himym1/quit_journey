// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // 新增导入
import 'package:flutter_test/flutter_test.dart';

import 'package:quit_journey/app_widget.dart'; // 修改导入

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        // 包裹 ProviderScope
        child: AppWidget(),
      ),
    );

    // Verify that our counter starts at 0.
    // 由于 AppWidget 的初始界面已更改，以下断言将失败，暂时注释掉
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);

    // 新的临时测试，验证 AppWidget 中的文本
    expect(find.text('账户与初始设置 MVP'), findsOneWidget);
  });
}
