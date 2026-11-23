import 'package:flutter/material.dart';
import 'package:gatepass/app.dart';
import 'package:gatepass/core/di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const GatePassApp());
}
