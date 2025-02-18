// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MealPlannerTableTable extends MealPlannerTable
    with TableInfo<$MealPlannerTableTable, MealPlannerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealPlannerTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mealPlannerIdMeta =
      const VerificationMeta('mealPlannerId');
  @override
  late final GeneratedColumn<String> mealPlannerId = GeneratedColumn<String>(
      'meal_planner_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v4());
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: DateTimeExpressions(currentDateAndTime)
          .modify(const DateTimeModifier.utc()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: DateTimeExpressions(currentDateAndTime)
          .modify(const DateTimeModifier.utc()));
  @override
  List<GeneratedColumn> get $columns =>
      [mealPlannerId, title, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meal_planner_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<MealPlannerTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('meal_planner_id')) {
      context.handle(
          _mealPlannerIdMeta,
          mealPlannerId.isAcceptableOrUnknown(
              data['meal_planner_id']!, _mealPlannerIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MealPlannerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealPlannerTableData(
      mealPlannerId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}meal_planner_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $MealPlannerTableTable createAlias(String alias) {
    return $MealPlannerTableTable(attachedDatabase, alias);
  }
}

class MealPlannerTableData extends DataClass
    implements Insertable<MealPlannerTableData> {
  final String mealPlannerId;
  final String title;
  final DateTime createdAt;
  final DateTime updatedAt;
  const MealPlannerTableData(
      {required this.mealPlannerId,
      required this.title,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['meal_planner_id'] = Variable<String>(mealPlannerId);
    map['title'] = Variable<String>(title);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  MealPlannerTableCompanion toCompanion(bool nullToAbsent) {
    return MealPlannerTableCompanion(
      mealPlannerId: Value(mealPlannerId),
      title: Value(title),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory MealPlannerTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealPlannerTableData(
      mealPlannerId: serializer.fromJson<String>(json['mealPlannerId']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mealPlannerId': serializer.toJson<String>(mealPlannerId),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MealPlannerTableData copyWith(
          {String? mealPlannerId,
          String? title,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      MealPlannerTableData(
        mealPlannerId: mealPlannerId ?? this.mealPlannerId,
        title: title ?? this.title,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  MealPlannerTableData copyWithCompanion(MealPlannerTableCompanion data) {
    return MealPlannerTableData(
      mealPlannerId: data.mealPlannerId.present
          ? data.mealPlannerId.value
          : this.mealPlannerId,
      title: data.title.present ? data.title.value : this.title,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MealPlannerTableData(')
          ..write('mealPlannerId: $mealPlannerId, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(mealPlannerId, title, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealPlannerTableData &&
          other.mealPlannerId == this.mealPlannerId &&
          other.title == this.title &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class MealPlannerTableCompanion extends UpdateCompanion<MealPlannerTableData> {
  final Value<String> mealPlannerId;
  final Value<String> title;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const MealPlannerTableCompanion({
    this.mealPlannerId = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MealPlannerTableCompanion.insert({
    this.mealPlannerId = const Value.absent(),
    required String title,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : title = Value(title);
  static Insertable<MealPlannerTableData> custom({
    Expression<String>? mealPlannerId,
    Expression<String>? title,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (mealPlannerId != null) 'meal_planner_id': mealPlannerId,
      if (title != null) 'title': title,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MealPlannerTableCompanion copyWith(
      {Value<String>? mealPlannerId,
      Value<String>? title,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return MealPlannerTableCompanion(
      mealPlannerId: mealPlannerId ?? this.mealPlannerId,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mealPlannerId.present) {
      map['meal_planner_id'] = Variable<String>(mealPlannerId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealPlannerTableCompanion(')
          ..write('mealPlannerId: $mealPlannerId, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MealPlannerTableTable mealPlannerTable =
      $MealPlannerTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mealPlannerTable];
}

typedef $$MealPlannerTableTableCreateCompanionBuilder
    = MealPlannerTableCompanion Function({
  Value<String> mealPlannerId,
  required String title,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});
typedef $$MealPlannerTableTableUpdateCompanionBuilder
    = MealPlannerTableCompanion Function({
  Value<String> mealPlannerId,
  Value<String> title,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$MealPlannerTableTableFilterComposer
    extends Composer<_$AppDatabase, $MealPlannerTableTable> {
  $$MealPlannerTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get mealPlannerId => $composableBuilder(
      column: $table.mealPlannerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$MealPlannerTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MealPlannerTableTable> {
  $$MealPlannerTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get mealPlannerId => $composableBuilder(
      column: $table.mealPlannerId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$MealPlannerTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MealPlannerTableTable> {
  $$MealPlannerTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get mealPlannerId => $composableBuilder(
      column: $table.mealPlannerId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$MealPlannerTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MealPlannerTableTable,
    MealPlannerTableData,
    $$MealPlannerTableTableFilterComposer,
    $$MealPlannerTableTableOrderingComposer,
    $$MealPlannerTableTableAnnotationComposer,
    $$MealPlannerTableTableCreateCompanionBuilder,
    $$MealPlannerTableTableUpdateCompanionBuilder,
    (
      MealPlannerTableData,
      BaseReferences<_$AppDatabase, $MealPlannerTableTable,
          MealPlannerTableData>
    ),
    MealPlannerTableData,
    PrefetchHooks Function()> {
  $$MealPlannerTableTableTableManager(
      _$AppDatabase db, $MealPlannerTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MealPlannerTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MealPlannerTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MealPlannerTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> mealPlannerId = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MealPlannerTableCompanion(
            mealPlannerId: mealPlannerId,
            title: title,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> mealPlannerId = const Value.absent(),
            required String title,
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MealPlannerTableCompanion.insert(
            mealPlannerId: mealPlannerId,
            title: title,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MealPlannerTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MealPlannerTableTable,
    MealPlannerTableData,
    $$MealPlannerTableTableFilterComposer,
    $$MealPlannerTableTableOrderingComposer,
    $$MealPlannerTableTableAnnotationComposer,
    $$MealPlannerTableTableCreateCompanionBuilder,
    $$MealPlannerTableTableUpdateCompanionBuilder,
    (
      MealPlannerTableData,
      BaseReferences<_$AppDatabase, $MealPlannerTableTable,
          MealPlannerTableData>
    ),
    MealPlannerTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MealPlannerTableTableTableManager get mealPlannerTable =>
      $$MealPlannerTableTableTableManager(_db, _db.mealPlannerTable);
}
