import 'package:flutter/material.dart';
import 'package:gatepass/core/router/app_router.dart';

class GatePassApp extends StatelessWidget {
  const GatePassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Gate Pass', routerConfig: appRouter);
  }
}
