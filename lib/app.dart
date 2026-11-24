import 'package:flutter/material.dart';
import 'package:gatepass/core/router/app_router.dart';
import 'package:gatepass/core/theme/app_theme.dart';

class GatePassApp extends StatelessWidget {
  const GatePassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gate Pass',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: appRouter,
    );
  }
}
