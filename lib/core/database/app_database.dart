import 'package:drift/drift.dart';
import 'package:gatepass/core/database/tables/events_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Events])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.executor);

  @override
  int get schemaVersion => 1;
}