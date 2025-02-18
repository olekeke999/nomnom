import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:uuid/uuid.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [MealPlannerTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'nomnom_db',
      native: const DriftNativeOptions(),
    );
  }
}

// test table yet.
class MealPlannerTable extends Table {
  TextColumn get mealPlannerId =>
      text().clientDefault(() => const Uuid().v4())();

  TextColumn get title => text().withLength()();

  DateTimeColumn get createdAt => dateTime()
      .withDefault(currentDateAndTime.modify(const DateTimeModifier.utc()))();

  DateTimeColumn get updatedAt => dateTime()
      .withDefault(currentDateAndTime.modify(const DateTimeModifier.utc()))();
}
