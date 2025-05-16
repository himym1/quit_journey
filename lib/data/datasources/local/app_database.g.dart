// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $QuitSettingsTableTable extends QuitSettingsTable
    with TableInfo<$QuitSettingsTableTable, QuitSettingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuitSettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quitDateTimeMeta = const VerificationMeta(
    'quitDateTime',
  );
  @override
  late final GeneratedColumn<DateTime> quitDateTime = GeneratedColumn<DateTime>(
    'quit_date_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dailyCigarettesMeta = const VerificationMeta(
    'dailyCigarettes',
  );
  @override
  late final GeneratedColumn<int> dailyCigarettes = GeneratedColumn<int>(
    'daily_cigarettes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packPriceMeta = const VerificationMeta(
    'packPrice',
  );
  @override
  late final GeneratedColumn<double> packPrice = GeneratedColumn<double>(
    'pack_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _smokingYearsMeta = const VerificationMeta(
    'smokingYears',
  );
  @override
  late final GeneratedColumn<int> smokingYears = GeneratedColumn<int>(
    'smoking_years',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quitReasonMeta = const VerificationMeta(
    'quitReason',
  );
  @override
  late final GeneratedColumn<String> quitReason = GeneratedColumn<String>(
    'quit_reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    userId,
    quitDateTime,
    dailyCigarettes,
    packPrice,
    smokingYears,
    quitReason,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quit_settings_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuitSettingTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('quit_date_time')) {
      context.handle(
        _quitDateTimeMeta,
        quitDateTime.isAcceptableOrUnknown(
          data['quit_date_time']!,
          _quitDateTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quitDateTimeMeta);
    }
    if (data.containsKey('daily_cigarettes')) {
      context.handle(
        _dailyCigarettesMeta,
        dailyCigarettes.isAcceptableOrUnknown(
          data['daily_cigarettes']!,
          _dailyCigarettesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dailyCigarettesMeta);
    }
    if (data.containsKey('pack_price')) {
      context.handle(
        _packPriceMeta,
        packPrice.isAcceptableOrUnknown(data['pack_price']!, _packPriceMeta),
      );
    } else if (isInserting) {
      context.missing(_packPriceMeta);
    }
    if (data.containsKey('smoking_years')) {
      context.handle(
        _smokingYearsMeta,
        smokingYears.isAcceptableOrUnknown(
          data['smoking_years']!,
          _smokingYearsMeta,
        ),
      );
    }
    if (data.containsKey('quit_reason')) {
      context.handle(
        _quitReasonMeta,
        quitReason.isAcceptableOrUnknown(data['quit_reason']!, _quitReasonMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  QuitSettingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuitSettingTableData(
      userId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}user_id'],
          )!,
      quitDateTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}quit_date_time'],
          )!,
      dailyCigarettes:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}daily_cigarettes'],
          )!,
      packPrice:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}pack_price'],
          )!,
      smokingYears: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}smoking_years'],
      ),
      quitReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quit_reason'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $QuitSettingsTableTable createAlias(String alias) {
    return $QuitSettingsTableTable(attachedDatabase, alias);
  }
}

class QuitSettingTableData extends DataClass
    implements Insertable<QuitSettingTableData> {
  final String userId;
  final DateTime quitDateTime;
  final int dailyCigarettes;
  final double packPrice;
  final int? smokingYears;
  final String? quitReason;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const QuitSettingTableData({
    required this.userId,
    required this.quitDateTime,
    required this.dailyCigarettes,
    required this.packPrice,
    this.smokingYears,
    this.quitReason,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['quit_date_time'] = Variable<DateTime>(quitDateTime);
    map['daily_cigarettes'] = Variable<int>(dailyCigarettes);
    map['pack_price'] = Variable<double>(packPrice);
    if (!nullToAbsent || smokingYears != null) {
      map['smoking_years'] = Variable<int>(smokingYears);
    }
    if (!nullToAbsent || quitReason != null) {
      map['quit_reason'] = Variable<String>(quitReason);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  QuitSettingsTableCompanion toCompanion(bool nullToAbsent) {
    return QuitSettingsTableCompanion(
      userId: Value(userId),
      quitDateTime: Value(quitDateTime),
      dailyCigarettes: Value(dailyCigarettes),
      packPrice: Value(packPrice),
      smokingYears:
          smokingYears == null && nullToAbsent
              ? const Value.absent()
              : Value(smokingYears),
      quitReason:
          quitReason == null && nullToAbsent
              ? const Value.absent()
              : Value(quitReason),
      createdAt: Value(createdAt),
      updatedAt:
          updatedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(updatedAt),
    );
  }

  factory QuitSettingTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuitSettingTableData(
      userId: serializer.fromJson<String>(json['userId']),
      quitDateTime: serializer.fromJson<DateTime>(json['quitDateTime']),
      dailyCigarettes: serializer.fromJson<int>(json['dailyCigarettes']),
      packPrice: serializer.fromJson<double>(json['packPrice']),
      smokingYears: serializer.fromJson<int?>(json['smokingYears']),
      quitReason: serializer.fromJson<String?>(json['quitReason']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'quitDateTime': serializer.toJson<DateTime>(quitDateTime),
      'dailyCigarettes': serializer.toJson<int>(dailyCigarettes),
      'packPrice': serializer.toJson<double>(packPrice),
      'smokingYears': serializer.toJson<int?>(smokingYears),
      'quitReason': serializer.toJson<String?>(quitReason),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  QuitSettingTableData copyWith({
    String? userId,
    DateTime? quitDateTime,
    int? dailyCigarettes,
    double? packPrice,
    Value<int?> smokingYears = const Value.absent(),
    Value<String?> quitReason = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => QuitSettingTableData(
    userId: userId ?? this.userId,
    quitDateTime: quitDateTime ?? this.quitDateTime,
    dailyCigarettes: dailyCigarettes ?? this.dailyCigarettes,
    packPrice: packPrice ?? this.packPrice,
    smokingYears: smokingYears.present ? smokingYears.value : this.smokingYears,
    quitReason: quitReason.present ? quitReason.value : this.quitReason,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  QuitSettingTableData copyWithCompanion(QuitSettingsTableCompanion data) {
    return QuitSettingTableData(
      userId: data.userId.present ? data.userId.value : this.userId,
      quitDateTime:
          data.quitDateTime.present
              ? data.quitDateTime.value
              : this.quitDateTime,
      dailyCigarettes:
          data.dailyCigarettes.present
              ? data.dailyCigarettes.value
              : this.dailyCigarettes,
      packPrice: data.packPrice.present ? data.packPrice.value : this.packPrice,
      smokingYears:
          data.smokingYears.present
              ? data.smokingYears.value
              : this.smokingYears,
      quitReason:
          data.quitReason.present ? data.quitReason.value : this.quitReason,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuitSettingTableData(')
          ..write('userId: $userId, ')
          ..write('quitDateTime: $quitDateTime, ')
          ..write('dailyCigarettes: $dailyCigarettes, ')
          ..write('packPrice: $packPrice, ')
          ..write('smokingYears: $smokingYears, ')
          ..write('quitReason: $quitReason, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    userId,
    quitDateTime,
    dailyCigarettes,
    packPrice,
    smokingYears,
    quitReason,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuitSettingTableData &&
          other.userId == this.userId &&
          other.quitDateTime == this.quitDateTime &&
          other.dailyCigarettes == this.dailyCigarettes &&
          other.packPrice == this.packPrice &&
          other.smokingYears == this.smokingYears &&
          other.quitReason == this.quitReason &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class QuitSettingsTableCompanion extends UpdateCompanion<QuitSettingTableData> {
  final Value<String> userId;
  final Value<DateTime> quitDateTime;
  final Value<int> dailyCigarettes;
  final Value<double> packPrice;
  final Value<int?> smokingYears;
  final Value<String?> quitReason;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const QuitSettingsTableCompanion({
    this.userId = const Value.absent(),
    this.quitDateTime = const Value.absent(),
    this.dailyCigarettes = const Value.absent(),
    this.packPrice = const Value.absent(),
    this.smokingYears = const Value.absent(),
    this.quitReason = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuitSettingsTableCompanion.insert({
    required String userId,
    required DateTime quitDateTime,
    required int dailyCigarettes,
    required double packPrice,
    this.smokingYears = const Value.absent(),
    this.quitReason = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : userId = Value(userId),
       quitDateTime = Value(quitDateTime),
       dailyCigarettes = Value(dailyCigarettes),
       packPrice = Value(packPrice),
       createdAt = Value(createdAt);
  static Insertable<QuitSettingTableData> custom({
    Expression<String>? userId,
    Expression<DateTime>? quitDateTime,
    Expression<int>? dailyCigarettes,
    Expression<double>? packPrice,
    Expression<int>? smokingYears,
    Expression<String>? quitReason,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (quitDateTime != null) 'quit_date_time': quitDateTime,
      if (dailyCigarettes != null) 'daily_cigarettes': dailyCigarettes,
      if (packPrice != null) 'pack_price': packPrice,
      if (smokingYears != null) 'smoking_years': smokingYears,
      if (quitReason != null) 'quit_reason': quitReason,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuitSettingsTableCompanion copyWith({
    Value<String>? userId,
    Value<DateTime>? quitDateTime,
    Value<int>? dailyCigarettes,
    Value<double>? packPrice,
    Value<int?>? smokingYears,
    Value<String?>? quitReason,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<int>? rowid,
  }) {
    return QuitSettingsTableCompanion(
      userId: userId ?? this.userId,
      quitDateTime: quitDateTime ?? this.quitDateTime,
      dailyCigarettes: dailyCigarettes ?? this.dailyCigarettes,
      packPrice: packPrice ?? this.packPrice,
      smokingYears: smokingYears ?? this.smokingYears,
      quitReason: quitReason ?? this.quitReason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (quitDateTime.present) {
      map['quit_date_time'] = Variable<DateTime>(quitDateTime.value);
    }
    if (dailyCigarettes.present) {
      map['daily_cigarettes'] = Variable<int>(dailyCigarettes.value);
    }
    if (packPrice.present) {
      map['pack_price'] = Variable<double>(packPrice.value);
    }
    if (smokingYears.present) {
      map['smoking_years'] = Variable<int>(smokingYears.value);
    }
    if (quitReason.present) {
      map['quit_reason'] = Variable<String>(quitReason.value);
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
    return (StringBuffer('QuitSettingsTableCompanion(')
          ..write('userId: $userId, ')
          ..write('quitDateTime: $quitDateTime, ')
          ..write('dailyCigarettes: $dailyCigarettes, ')
          ..write('packPrice: $packPrice, ')
          ..write('smokingYears: $smokingYears, ')
          ..write('quitReason: $quitReason, ')
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
  late final $QuitSettingsTableTable quitSettingsTable =
      $QuitSettingsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [quitSettingsTable];
}

typedef $$QuitSettingsTableTableCreateCompanionBuilder =
    QuitSettingsTableCompanion Function({
      required String userId,
      required DateTime quitDateTime,
      required int dailyCigarettes,
      required double packPrice,
      Value<int?> smokingYears,
      Value<String?> quitReason,
      required DateTime createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });
typedef $$QuitSettingsTableTableUpdateCompanionBuilder =
    QuitSettingsTableCompanion Function({
      Value<String> userId,
      Value<DateTime> quitDateTime,
      Value<int> dailyCigarettes,
      Value<double> packPrice,
      Value<int?> smokingYears,
      Value<String?> quitReason,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> rowid,
    });

class $$QuitSettingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $QuitSettingsTableTable> {
  $$QuitSettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get quitDateTime => $composableBuilder(
    column: $table.quitDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dailyCigarettes => $composableBuilder(
    column: $table.dailyCigarettes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get packPrice => $composableBuilder(
    column: $table.packPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get smokingYears => $composableBuilder(
    column: $table.smokingYears,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quitReason => $composableBuilder(
    column: $table.quitReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$QuitSettingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $QuitSettingsTableTable> {
  $$QuitSettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get quitDateTime => $composableBuilder(
    column: $table.quitDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dailyCigarettes => $composableBuilder(
    column: $table.dailyCigarettes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get packPrice => $composableBuilder(
    column: $table.packPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get smokingYears => $composableBuilder(
    column: $table.smokingYears,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quitReason => $composableBuilder(
    column: $table.quitReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$QuitSettingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuitSettingsTableTable> {
  $$QuitSettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get quitDateTime => $composableBuilder(
    column: $table.quitDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dailyCigarettes => $composableBuilder(
    column: $table.dailyCigarettes,
    builder: (column) => column,
  );

  GeneratedColumn<double> get packPrice =>
      $composableBuilder(column: $table.packPrice, builder: (column) => column);

  GeneratedColumn<int> get smokingYears => $composableBuilder(
    column: $table.smokingYears,
    builder: (column) => column,
  );

  GeneratedColumn<String> get quitReason => $composableBuilder(
    column: $table.quitReason,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$QuitSettingsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuitSettingsTableTable,
          QuitSettingTableData,
          $$QuitSettingsTableTableFilterComposer,
          $$QuitSettingsTableTableOrderingComposer,
          $$QuitSettingsTableTableAnnotationComposer,
          $$QuitSettingsTableTableCreateCompanionBuilder,
          $$QuitSettingsTableTableUpdateCompanionBuilder,
          (
            QuitSettingTableData,
            BaseReferences<
              _$AppDatabase,
              $QuitSettingsTableTable,
              QuitSettingTableData
            >,
          ),
          QuitSettingTableData,
          PrefetchHooks Function()
        > {
  $$QuitSettingsTableTableTableManager(
    _$AppDatabase db,
    $QuitSettingsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$QuitSettingsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$QuitSettingsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$QuitSettingsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> userId = const Value.absent(),
                Value<DateTime> quitDateTime = const Value.absent(),
                Value<int> dailyCigarettes = const Value.absent(),
                Value<double> packPrice = const Value.absent(),
                Value<int?> smokingYears = const Value.absent(),
                Value<String?> quitReason = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuitSettingsTableCompanion(
                userId: userId,
                quitDateTime: quitDateTime,
                dailyCigarettes: dailyCigarettes,
                packPrice: packPrice,
                smokingYears: smokingYears,
                quitReason: quitReason,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String userId,
                required DateTime quitDateTime,
                required int dailyCigarettes,
                required double packPrice,
                Value<int?> smokingYears = const Value.absent(),
                Value<String?> quitReason = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuitSettingsTableCompanion.insert(
                userId: userId,
                quitDateTime: quitDateTime,
                dailyCigarettes: dailyCigarettes,
                packPrice: packPrice,
                smokingYears: smokingYears,
                quitReason: quitReason,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$QuitSettingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuitSettingsTableTable,
      QuitSettingTableData,
      $$QuitSettingsTableTableFilterComposer,
      $$QuitSettingsTableTableOrderingComposer,
      $$QuitSettingsTableTableAnnotationComposer,
      $$QuitSettingsTableTableCreateCompanionBuilder,
      $$QuitSettingsTableTableUpdateCompanionBuilder,
      (
        QuitSettingTableData,
        BaseReferences<
          _$AppDatabase,
          $QuitSettingsTableTable,
          QuitSettingTableData
        >,
      ),
      QuitSettingTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$QuitSettingsTableTableTableManager get quitSettingsTable =>
      $$QuitSettingsTableTableTableManager(_db, _db.quitSettingsTable);
}
