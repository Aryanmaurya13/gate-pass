import 'package:drift/drift.dart';

@DataClassName('EventRow')
class Events extends Table{
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get startsAt => dateTime()();
  TextColumn get venue => text()();
  TextColumn get publicKey => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}