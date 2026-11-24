import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gatepass/core/theme/app_theme.dart';
import 'package:gatepass/core/theme/status_colors.dart';

void main() {
  test('light and dark themes both carry the status colours', () {
    expect(AppTheme.light.extension<StatusColors>(), StatusColors.standard);
    expect(AppTheme.dark.extension<StatusColors>(), StatusColors.standard);
    expect(AppTheme.dark.brightness, Brightness.dark);
  });

  testWidgets('context.statusColors reads the theme extension', (tester) async {
    late StatusColors colors;
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light,
        home: Builder(
          builder: (context) {
            colors = context.statusColors;
            return const SizedBox();
          },
        ),
      ),
    );
    expect(colors.admitted, const Color(0xFF2E7D32));
  });
}
