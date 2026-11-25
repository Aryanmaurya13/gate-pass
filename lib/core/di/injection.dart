import 'package:drift_flutter/drift_flutter.dart';
import 'package:get_it/get_it.dart';

import '../database/app_database.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  sl.registerLazySingleton<AppDatabase>(
        () => AppDatabase(driftDatabase(name: 'gate_pass')),
  );
}
