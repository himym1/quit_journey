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
  static const VerificationMeta _cigarettesPerPackMeta = const VerificationMeta(
    'cigarettesPerPack',
  );
  @override
  late final GeneratedColumn<int> cigarettesPerPack = GeneratedColumn<int>(
    'cigarettes_per_pack',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(20),
  );
  static const VerificationMeta _dailyCigaretteCostMeta =
      const VerificationMeta('dailyCigaretteCost');
  @override
  late final GeneratedColumn<double> dailyCigaretteCost =
      GeneratedColumn<double>(
        'daily_cigarette_cost',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  static const VerificationMeta _quitStartTimeMeta = const VerificationMeta(
    'quitStartTime',
  );
  @override
  late final GeneratedColumn<DateTime> quitStartTime =
      GeneratedColumn<DateTime>(
        'quit_start_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _nicotineAddictionLevelMeta =
      const VerificationMeta('nicotineAddictionLevel');
  @override
  late final GeneratedColumn<int> nicotineAddictionLevel = GeneratedColumn<int>(
    'nicotine_addiction_level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(3),
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
    cigarettesPerPack,
    dailyCigaretteCost,
    quitStartTime,
    nicotineAddictionLevel,
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
    if (data.containsKey('cigarettes_per_pack')) {
      context.handle(
        _cigarettesPerPackMeta,
        cigarettesPerPack.isAcceptableOrUnknown(
          data['cigarettes_per_pack']!,
          _cigarettesPerPackMeta,
        ),
      );
    }
    if (data.containsKey('daily_cigarette_cost')) {
      context.handle(
        _dailyCigaretteCostMeta,
        dailyCigaretteCost.isAcceptableOrUnknown(
          data['daily_cigarette_cost']!,
          _dailyCigaretteCostMeta,
        ),
      );
    }
    if (data.containsKey('quit_start_time')) {
      context.handle(
        _quitStartTimeMeta,
        quitStartTime.isAcceptableOrUnknown(
          data['quit_start_time']!,
          _quitStartTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_quitStartTimeMeta);
    }
    if (data.containsKey('nicotine_addiction_level')) {
      context.handle(
        _nicotineAddictionLevelMeta,
        nicotineAddictionLevel.isAcceptableOrUnknown(
          data['nicotine_addiction_level']!,
          _nicotineAddictionLevelMeta,
        ),
      );
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
      cigarettesPerPack:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}cigarettes_per_pack'],
          )!,
      dailyCigaretteCost:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}daily_cigarette_cost'],
          )!,
      quitStartTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}quit_start_time'],
          )!,
      nicotineAddictionLevel:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}nicotine_addiction_level'],
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
  final int cigarettesPerPack;
  final double dailyCigaretteCost;
  final DateTime quitStartTime;
  final int nicotineAddictionLevel;
  final int? smokingYears;
  final String? quitReason;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const QuitSettingTableData({
    required this.userId,
    required this.quitDateTime,
    required this.dailyCigarettes,
    required this.packPrice,
    required this.cigarettesPerPack,
    required this.dailyCigaretteCost,
    required this.quitStartTime,
    required this.nicotineAddictionLevel,
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
    map['cigarettes_per_pack'] = Variable<int>(cigarettesPerPack);
    map['daily_cigarette_cost'] = Variable<double>(dailyCigaretteCost);
    map['quit_start_time'] = Variable<DateTime>(quitStartTime);
    map['nicotine_addiction_level'] = Variable<int>(nicotineAddictionLevel);
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
      cigarettesPerPack: Value(cigarettesPerPack),
      dailyCigaretteCost: Value(dailyCigaretteCost),
      quitStartTime: Value(quitStartTime),
      nicotineAddictionLevel: Value(nicotineAddictionLevel),
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
      cigarettesPerPack: serializer.fromJson<int>(json['cigarettesPerPack']),
      dailyCigaretteCost: serializer.fromJson<double>(
        json['dailyCigaretteCost'],
      ),
      quitStartTime: serializer.fromJson<DateTime>(json['quitStartTime']),
      nicotineAddictionLevel: serializer.fromJson<int>(
        json['nicotineAddictionLevel'],
      ),
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
      'cigarettesPerPack': serializer.toJson<int>(cigarettesPerPack),
      'dailyCigaretteCost': serializer.toJson<double>(dailyCigaretteCost),
      'quitStartTime': serializer.toJson<DateTime>(quitStartTime),
      'nicotineAddictionLevel': serializer.toJson<int>(nicotineAddictionLevel),
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
    int? cigarettesPerPack,
    double? dailyCigaretteCost,
    DateTime? quitStartTime,
    int? nicotineAddictionLevel,
    Value<int?> smokingYears = const Value.absent(),
    Value<String?> quitReason = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => QuitSettingTableData(
    userId: userId ?? this.userId,
    quitDateTime: quitDateTime ?? this.quitDateTime,
    dailyCigarettes: dailyCigarettes ?? this.dailyCigarettes,
    packPrice: packPrice ?? this.packPrice,
    cigarettesPerPack: cigarettesPerPack ?? this.cigarettesPerPack,
    dailyCigaretteCost: dailyCigaretteCost ?? this.dailyCigaretteCost,
    quitStartTime: quitStartTime ?? this.quitStartTime,
    nicotineAddictionLevel:
        nicotineAddictionLevel ?? this.nicotineAddictionLevel,
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
      cigarettesPerPack:
          data.cigarettesPerPack.present
              ? data.cigarettesPerPack.value
              : this.cigarettesPerPack,
      dailyCigaretteCost:
          data.dailyCigaretteCost.present
              ? data.dailyCigaretteCost.value
              : this.dailyCigaretteCost,
      quitStartTime:
          data.quitStartTime.present
              ? data.quitStartTime.value
              : this.quitStartTime,
      nicotineAddictionLevel:
          data.nicotineAddictionLevel.present
              ? data.nicotineAddictionLevel.value
              : this.nicotineAddictionLevel,
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
          ..write('cigarettesPerPack: $cigarettesPerPack, ')
          ..write('dailyCigaretteCost: $dailyCigaretteCost, ')
          ..write('quitStartTime: $quitStartTime, ')
          ..write('nicotineAddictionLevel: $nicotineAddictionLevel, ')
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
    cigarettesPerPack,
    dailyCigaretteCost,
    quitStartTime,
    nicotineAddictionLevel,
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
          other.cigarettesPerPack == this.cigarettesPerPack &&
          other.dailyCigaretteCost == this.dailyCigaretteCost &&
          other.quitStartTime == this.quitStartTime &&
          other.nicotineAddictionLevel == this.nicotineAddictionLevel &&
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
  final Value<int> cigarettesPerPack;
  final Value<double> dailyCigaretteCost;
  final Value<DateTime> quitStartTime;
  final Value<int> nicotineAddictionLevel;
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
    this.cigarettesPerPack = const Value.absent(),
    this.dailyCigaretteCost = const Value.absent(),
    this.quitStartTime = const Value.absent(),
    this.nicotineAddictionLevel = const Value.absent(),
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
    this.cigarettesPerPack = const Value.absent(),
    this.dailyCigaretteCost = const Value.absent(),
    required DateTime quitStartTime,
    this.nicotineAddictionLevel = const Value.absent(),
    this.smokingYears = const Value.absent(),
    this.quitReason = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : userId = Value(userId),
       quitDateTime = Value(quitDateTime),
       dailyCigarettes = Value(dailyCigarettes),
       packPrice = Value(packPrice),
       quitStartTime = Value(quitStartTime),
       createdAt = Value(createdAt);
  static Insertable<QuitSettingTableData> custom({
    Expression<String>? userId,
    Expression<DateTime>? quitDateTime,
    Expression<int>? dailyCigarettes,
    Expression<double>? packPrice,
    Expression<int>? cigarettesPerPack,
    Expression<double>? dailyCigaretteCost,
    Expression<DateTime>? quitStartTime,
    Expression<int>? nicotineAddictionLevel,
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
      if (cigarettesPerPack != null) 'cigarettes_per_pack': cigarettesPerPack,
      if (dailyCigaretteCost != null)
        'daily_cigarette_cost': dailyCigaretteCost,
      if (quitStartTime != null) 'quit_start_time': quitStartTime,
      if (nicotineAddictionLevel != null)
        'nicotine_addiction_level': nicotineAddictionLevel,
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
    Value<int>? cigarettesPerPack,
    Value<double>? dailyCigaretteCost,
    Value<DateTime>? quitStartTime,
    Value<int>? nicotineAddictionLevel,
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
      cigarettesPerPack: cigarettesPerPack ?? this.cigarettesPerPack,
      dailyCigaretteCost: dailyCigaretteCost ?? this.dailyCigaretteCost,
      quitStartTime: quitStartTime ?? this.quitStartTime,
      nicotineAddictionLevel:
          nicotineAddictionLevel ?? this.nicotineAddictionLevel,
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
    if (cigarettesPerPack.present) {
      map['cigarettes_per_pack'] = Variable<int>(cigarettesPerPack.value);
    }
    if (dailyCigaretteCost.present) {
      map['daily_cigarette_cost'] = Variable<double>(dailyCigaretteCost.value);
    }
    if (quitStartTime.present) {
      map['quit_start_time'] = Variable<DateTime>(quitStartTime.value);
    }
    if (nicotineAddictionLevel.present) {
      map['nicotine_addiction_level'] = Variable<int>(
        nicotineAddictionLevel.value,
      );
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
          ..write('cigarettesPerPack: $cigarettesPerPack, ')
          ..write('dailyCigaretteCost: $dailyCigaretteCost, ')
          ..write('quitStartTime: $quitStartTime, ')
          ..write('nicotineAddictionLevel: $nicotineAddictionLevel, ')
          ..write('smokingYears: $smokingYears, ')
          ..write('quitReason: $quitReason, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CravingRecordsTable extends CravingRecords
    with TableInfo<$CravingRecordsTable, CravingRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CravingRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _occurredAtMeta = const VerificationMeta(
    'occurredAt',
  );
  @override
  late final GeneratedColumn<DateTime> occurredAt = GeneratedColumn<DateTime>(
    'occurred_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intensityMeta = const VerificationMeta(
    'intensity',
  );
  @override
  late final GeneratedColumn<int> intensity = GeneratedColumn<int>(
    'intensity',
    aliasedName,
    false,
    check: () => ComparableExpr(intensity).isBetween(Constant(1), Constant(5)),
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _triggerContextMeta = const VerificationMeta(
    'triggerContext',
  );
  @override
  late final GeneratedColumn<String> triggerContext = GeneratedColumn<String>(
    'trigger_context',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _copingStrategyUsedMeta =
      const VerificationMeta('copingStrategyUsed');
  @override
  late final GeneratedColumn<String> copingStrategyUsed =
      GeneratedColumn<String>(
        'coping_strategy_used',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _successfullyResistedMeta =
      const VerificationMeta('successfullyResisted');
  @override
  late final GeneratedColumn<bool> successfullyResisted = GeneratedColumn<bool>(
    'successfully_resisted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("successfully_resisted" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    occurredAt,
    intensity,
    triggerContext,
    copingStrategyUsed,
    successfullyResisted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'craving_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<CravingRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('occurred_at')) {
      context.handle(
        _occurredAtMeta,
        occurredAt.isAcceptableOrUnknown(data['occurred_at']!, _occurredAtMeta),
      );
    } else if (isInserting) {
      context.missing(_occurredAtMeta);
    }
    if (data.containsKey('intensity')) {
      context.handle(
        _intensityMeta,
        intensity.isAcceptableOrUnknown(data['intensity']!, _intensityMeta),
      );
    } else if (isInserting) {
      context.missing(_intensityMeta);
    }
    if (data.containsKey('trigger_context')) {
      context.handle(
        _triggerContextMeta,
        triggerContext.isAcceptableOrUnknown(
          data['trigger_context']!,
          _triggerContextMeta,
        ),
      );
    }
    if (data.containsKey('coping_strategy_used')) {
      context.handle(
        _copingStrategyUsedMeta,
        copingStrategyUsed.isAcceptableOrUnknown(
          data['coping_strategy_used']!,
          _copingStrategyUsedMeta,
        ),
      );
    }
    if (data.containsKey('successfully_resisted')) {
      context.handle(
        _successfullyResistedMeta,
        successfullyResisted.isAcceptableOrUnknown(
          data['successfully_resisted']!,
          _successfullyResistedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_successfullyResistedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CravingRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CravingRecord(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      occurredAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}occurred_at'],
          )!,
      intensity:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}intensity'],
          )!,
      triggerContext: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trigger_context'],
      ),
      copingStrategyUsed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}coping_strategy_used'],
      ),
      successfullyResisted:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}successfully_resisted'],
          )!,
    );
  }

  @override
  $CravingRecordsTable createAlias(String alias) {
    return $CravingRecordsTable(attachedDatabase, alias);
  }
}

class CravingRecord extends DataClass implements Insertable<CravingRecord> {
  final String id;
  final DateTime occurredAt;
  final int intensity;
  final String? triggerContext;
  final String? copingStrategyUsed;
  final bool successfullyResisted;
  const CravingRecord({
    required this.id,
    required this.occurredAt,
    required this.intensity,
    this.triggerContext,
    this.copingStrategyUsed,
    required this.successfullyResisted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['occurred_at'] = Variable<DateTime>(occurredAt);
    map['intensity'] = Variable<int>(intensity);
    if (!nullToAbsent || triggerContext != null) {
      map['trigger_context'] = Variable<String>(triggerContext);
    }
    if (!nullToAbsent || copingStrategyUsed != null) {
      map['coping_strategy_used'] = Variable<String>(copingStrategyUsed);
    }
    map['successfully_resisted'] = Variable<bool>(successfullyResisted);
    return map;
  }

  CravingRecordsCompanion toCompanion(bool nullToAbsent) {
    return CravingRecordsCompanion(
      id: Value(id),
      occurredAt: Value(occurredAt),
      intensity: Value(intensity),
      triggerContext:
          triggerContext == null && nullToAbsent
              ? const Value.absent()
              : Value(triggerContext),
      copingStrategyUsed:
          copingStrategyUsed == null && nullToAbsent
              ? const Value.absent()
              : Value(copingStrategyUsed),
      successfullyResisted: Value(successfullyResisted),
    );
  }

  factory CravingRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CravingRecord(
      id: serializer.fromJson<String>(json['id']),
      occurredAt: serializer.fromJson<DateTime>(json['occurredAt']),
      intensity: serializer.fromJson<int>(json['intensity']),
      triggerContext: serializer.fromJson<String?>(json['triggerContext']),
      copingStrategyUsed: serializer.fromJson<String?>(
        json['copingStrategyUsed'],
      ),
      successfullyResisted: serializer.fromJson<bool>(
        json['successfullyResisted'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'occurredAt': serializer.toJson<DateTime>(occurredAt),
      'intensity': serializer.toJson<int>(intensity),
      'triggerContext': serializer.toJson<String?>(triggerContext),
      'copingStrategyUsed': serializer.toJson<String?>(copingStrategyUsed),
      'successfullyResisted': serializer.toJson<bool>(successfullyResisted),
    };
  }

  CravingRecord copyWith({
    String? id,
    DateTime? occurredAt,
    int? intensity,
    Value<String?> triggerContext = const Value.absent(),
    Value<String?> copingStrategyUsed = const Value.absent(),
    bool? successfullyResisted,
  }) => CravingRecord(
    id: id ?? this.id,
    occurredAt: occurredAt ?? this.occurredAt,
    intensity: intensity ?? this.intensity,
    triggerContext:
        triggerContext.present ? triggerContext.value : this.triggerContext,
    copingStrategyUsed:
        copingStrategyUsed.present
            ? copingStrategyUsed.value
            : this.copingStrategyUsed,
    successfullyResisted: successfullyResisted ?? this.successfullyResisted,
  );
  CravingRecord copyWithCompanion(CravingRecordsCompanion data) {
    return CravingRecord(
      id: data.id.present ? data.id.value : this.id,
      occurredAt:
          data.occurredAt.present ? data.occurredAt.value : this.occurredAt,
      intensity: data.intensity.present ? data.intensity.value : this.intensity,
      triggerContext:
          data.triggerContext.present
              ? data.triggerContext.value
              : this.triggerContext,
      copingStrategyUsed:
          data.copingStrategyUsed.present
              ? data.copingStrategyUsed.value
              : this.copingStrategyUsed,
      successfullyResisted:
          data.successfullyResisted.present
              ? data.successfullyResisted.value
              : this.successfullyResisted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CravingRecord(')
          ..write('id: $id, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('intensity: $intensity, ')
          ..write('triggerContext: $triggerContext, ')
          ..write('copingStrategyUsed: $copingStrategyUsed, ')
          ..write('successfullyResisted: $successfullyResisted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    occurredAt,
    intensity,
    triggerContext,
    copingStrategyUsed,
    successfullyResisted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CravingRecord &&
          other.id == this.id &&
          other.occurredAt == this.occurredAt &&
          other.intensity == this.intensity &&
          other.triggerContext == this.triggerContext &&
          other.copingStrategyUsed == this.copingStrategyUsed &&
          other.successfullyResisted == this.successfullyResisted);
}

class CravingRecordsCompanion extends UpdateCompanion<CravingRecord> {
  final Value<String> id;
  final Value<DateTime> occurredAt;
  final Value<int> intensity;
  final Value<String?> triggerContext;
  final Value<String?> copingStrategyUsed;
  final Value<bool> successfullyResisted;
  final Value<int> rowid;
  const CravingRecordsCompanion({
    this.id = const Value.absent(),
    this.occurredAt = const Value.absent(),
    this.intensity = const Value.absent(),
    this.triggerContext = const Value.absent(),
    this.copingStrategyUsed = const Value.absent(),
    this.successfullyResisted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CravingRecordsCompanion.insert({
    required String id,
    required DateTime occurredAt,
    required int intensity,
    this.triggerContext = const Value.absent(),
    this.copingStrategyUsed = const Value.absent(),
    required bool successfullyResisted,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       occurredAt = Value(occurredAt),
       intensity = Value(intensity),
       successfullyResisted = Value(successfullyResisted);
  static Insertable<CravingRecord> custom({
    Expression<String>? id,
    Expression<DateTime>? occurredAt,
    Expression<int>? intensity,
    Expression<String>? triggerContext,
    Expression<String>? copingStrategyUsed,
    Expression<bool>? successfullyResisted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (occurredAt != null) 'occurred_at': occurredAt,
      if (intensity != null) 'intensity': intensity,
      if (triggerContext != null) 'trigger_context': triggerContext,
      if (copingStrategyUsed != null)
        'coping_strategy_used': copingStrategyUsed,
      if (successfullyResisted != null)
        'successfully_resisted': successfullyResisted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CravingRecordsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? occurredAt,
    Value<int>? intensity,
    Value<String?>? triggerContext,
    Value<String?>? copingStrategyUsed,
    Value<bool>? successfullyResisted,
    Value<int>? rowid,
  }) {
    return CravingRecordsCompanion(
      id: id ?? this.id,
      occurredAt: occurredAt ?? this.occurredAt,
      intensity: intensity ?? this.intensity,
      triggerContext: triggerContext ?? this.triggerContext,
      copingStrategyUsed: copingStrategyUsed ?? this.copingStrategyUsed,
      successfullyResisted: successfullyResisted ?? this.successfullyResisted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (occurredAt.present) {
      map['occurred_at'] = Variable<DateTime>(occurredAt.value);
    }
    if (intensity.present) {
      map['intensity'] = Variable<int>(intensity.value);
    }
    if (triggerContext.present) {
      map['trigger_context'] = Variable<String>(triggerContext.value);
    }
    if (copingStrategyUsed.present) {
      map['coping_strategy_used'] = Variable<String>(copingStrategyUsed.value);
    }
    if (successfullyResisted.present) {
      map['successfully_resisted'] = Variable<bool>(successfullyResisted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CravingRecordsCompanion(')
          ..write('id: $id, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('intensity: $intensity, ')
          ..write('triggerContext: $triggerContext, ')
          ..write('copingStrategyUsed: $copingStrategyUsed, ')
          ..write('successfullyResisted: $successfullyResisted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EmergencyStrategiesTable extends EmergencyStrategies
    with TableInfo<$EmergencyStrategiesTable, EmergencyStrategy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmergencyStrategiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, description, category];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'emergency_strategies';
  @override
  VerificationContext validateIntegrity(
    Insertable<EmergencyStrategy> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmergencyStrategy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmergencyStrategy(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      description:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}description'],
          )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
    );
  }

  @override
  $EmergencyStrategiesTable createAlias(String alias) {
    return $EmergencyStrategiesTable(attachedDatabase, alias);
  }
}

class EmergencyStrategy extends DataClass
    implements Insertable<EmergencyStrategy> {
  final String id;
  final String title;
  final String description;
  final String? category;
  const EmergencyStrategy({
    required this.id,
    required this.title,
    required this.description,
    this.category,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    return map;
  }

  EmergencyStrategiesCompanion toCompanion(bool nullToAbsent) {
    return EmergencyStrategiesCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      category:
          category == null && nullToAbsent
              ? const Value.absent()
              : Value(category),
    );
  }

  factory EmergencyStrategy.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmergencyStrategy(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String?>(category),
    };
  }

  EmergencyStrategy copyWith({
    String? id,
    String? title,
    String? description,
    Value<String?> category = const Value.absent(),
  }) => EmergencyStrategy(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    category: category.present ? category.value : this.category,
  );
  EmergencyStrategy copyWithCompanion(EmergencyStrategiesCompanion data) {
    return EmergencyStrategy(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      category: data.category.present ? data.category.value : this.category,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmergencyStrategy(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmergencyStrategy &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.category == this.category);
}

class EmergencyStrategiesCompanion extends UpdateCompanion<EmergencyStrategy> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String?> category;
  final Value<int> rowid;
  const EmergencyStrategiesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmergencyStrategiesCompanion.insert({
    required String id,
    required String title,
    required String description,
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       description = Value(description);
  static Insertable<EmergencyStrategy> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? category,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmergencyStrategiesCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String?>? category,
    Value<int>? rowid,
  }) {
    return EmergencyStrategiesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmergencyStrategiesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
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
  late final $CravingRecordsTable cravingRecords = $CravingRecordsTable(this);
  late final $EmergencyStrategiesTable emergencyStrategies =
      $EmergencyStrategiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    quitSettingsTable,
    cravingRecords,
    emergencyStrategies,
  ];
}

typedef $$QuitSettingsTableTableCreateCompanionBuilder =
    QuitSettingsTableCompanion Function({
      required String userId,
      required DateTime quitDateTime,
      required int dailyCigarettes,
      required double packPrice,
      Value<int> cigarettesPerPack,
      Value<double> dailyCigaretteCost,
      required DateTime quitStartTime,
      Value<int> nicotineAddictionLevel,
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
      Value<int> cigarettesPerPack,
      Value<double> dailyCigaretteCost,
      Value<DateTime> quitStartTime,
      Value<int> nicotineAddictionLevel,
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

  ColumnFilters<int> get cigarettesPerPack => $composableBuilder(
    column: $table.cigarettesPerPack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dailyCigaretteCost => $composableBuilder(
    column: $table.dailyCigaretteCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get quitStartTime => $composableBuilder(
    column: $table.quitStartTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get nicotineAddictionLevel => $composableBuilder(
    column: $table.nicotineAddictionLevel,
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

  ColumnOrderings<int> get cigarettesPerPack => $composableBuilder(
    column: $table.cigarettesPerPack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dailyCigaretteCost => $composableBuilder(
    column: $table.dailyCigaretteCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get quitStartTime => $composableBuilder(
    column: $table.quitStartTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nicotineAddictionLevel => $composableBuilder(
    column: $table.nicotineAddictionLevel,
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

  GeneratedColumn<int> get cigarettesPerPack => $composableBuilder(
    column: $table.cigarettesPerPack,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dailyCigaretteCost => $composableBuilder(
    column: $table.dailyCigaretteCost,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get quitStartTime => $composableBuilder(
    column: $table.quitStartTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get nicotineAddictionLevel => $composableBuilder(
    column: $table.nicotineAddictionLevel,
    builder: (column) => column,
  );

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
                Value<int> cigarettesPerPack = const Value.absent(),
                Value<double> dailyCigaretteCost = const Value.absent(),
                Value<DateTime> quitStartTime = const Value.absent(),
                Value<int> nicotineAddictionLevel = const Value.absent(),
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
                cigarettesPerPack: cigarettesPerPack,
                dailyCigaretteCost: dailyCigaretteCost,
                quitStartTime: quitStartTime,
                nicotineAddictionLevel: nicotineAddictionLevel,
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
                Value<int> cigarettesPerPack = const Value.absent(),
                Value<double> dailyCigaretteCost = const Value.absent(),
                required DateTime quitStartTime,
                Value<int> nicotineAddictionLevel = const Value.absent(),
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
                cigarettesPerPack: cigarettesPerPack,
                dailyCigaretteCost: dailyCigaretteCost,
                quitStartTime: quitStartTime,
                nicotineAddictionLevel: nicotineAddictionLevel,
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
typedef $$CravingRecordsTableCreateCompanionBuilder =
    CravingRecordsCompanion Function({
      required String id,
      required DateTime occurredAt,
      required int intensity,
      Value<String?> triggerContext,
      Value<String?> copingStrategyUsed,
      required bool successfullyResisted,
      Value<int> rowid,
    });
typedef $$CravingRecordsTableUpdateCompanionBuilder =
    CravingRecordsCompanion Function({
      Value<String> id,
      Value<DateTime> occurredAt,
      Value<int> intensity,
      Value<String?> triggerContext,
      Value<String?> copingStrategyUsed,
      Value<bool> successfullyResisted,
      Value<int> rowid,
    });

class $$CravingRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $CravingRecordsTable> {
  $$CravingRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intensity => $composableBuilder(
    column: $table.intensity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get triggerContext => $composableBuilder(
    column: $table.triggerContext,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get copingStrategyUsed => $composableBuilder(
    column: $table.copingStrategyUsed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get successfullyResisted => $composableBuilder(
    column: $table.successfullyResisted,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CravingRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $CravingRecordsTable> {
  $$CravingRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intensity => $composableBuilder(
    column: $table.intensity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get triggerContext => $composableBuilder(
    column: $table.triggerContext,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get copingStrategyUsed => $composableBuilder(
    column: $table.copingStrategyUsed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get successfullyResisted => $composableBuilder(
    column: $table.successfullyResisted,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CravingRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CravingRecordsTable> {
  $$CravingRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get intensity =>
      $composableBuilder(column: $table.intensity, builder: (column) => column);

  GeneratedColumn<String> get triggerContext => $composableBuilder(
    column: $table.triggerContext,
    builder: (column) => column,
  );

  GeneratedColumn<String> get copingStrategyUsed => $composableBuilder(
    column: $table.copingStrategyUsed,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get successfullyResisted => $composableBuilder(
    column: $table.successfullyResisted,
    builder: (column) => column,
  );
}

class $$CravingRecordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CravingRecordsTable,
          CravingRecord,
          $$CravingRecordsTableFilterComposer,
          $$CravingRecordsTableOrderingComposer,
          $$CravingRecordsTableAnnotationComposer,
          $$CravingRecordsTableCreateCompanionBuilder,
          $$CravingRecordsTableUpdateCompanionBuilder,
          (
            CravingRecord,
            BaseReferences<_$AppDatabase, $CravingRecordsTable, CravingRecord>,
          ),
          CravingRecord,
          PrefetchHooks Function()
        > {
  $$CravingRecordsTableTableManager(
    _$AppDatabase db,
    $CravingRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CravingRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$CravingRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$CravingRecordsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> occurredAt = const Value.absent(),
                Value<int> intensity = const Value.absent(),
                Value<String?> triggerContext = const Value.absent(),
                Value<String?> copingStrategyUsed = const Value.absent(),
                Value<bool> successfullyResisted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CravingRecordsCompanion(
                id: id,
                occurredAt: occurredAt,
                intensity: intensity,
                triggerContext: triggerContext,
                copingStrategyUsed: copingStrategyUsed,
                successfullyResisted: successfullyResisted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime occurredAt,
                required int intensity,
                Value<String?> triggerContext = const Value.absent(),
                Value<String?> copingStrategyUsed = const Value.absent(),
                required bool successfullyResisted,
                Value<int> rowid = const Value.absent(),
              }) => CravingRecordsCompanion.insert(
                id: id,
                occurredAt: occurredAt,
                intensity: intensity,
                triggerContext: triggerContext,
                copingStrategyUsed: copingStrategyUsed,
                successfullyResisted: successfullyResisted,
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

typedef $$CravingRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CravingRecordsTable,
      CravingRecord,
      $$CravingRecordsTableFilterComposer,
      $$CravingRecordsTableOrderingComposer,
      $$CravingRecordsTableAnnotationComposer,
      $$CravingRecordsTableCreateCompanionBuilder,
      $$CravingRecordsTableUpdateCompanionBuilder,
      (
        CravingRecord,
        BaseReferences<_$AppDatabase, $CravingRecordsTable, CravingRecord>,
      ),
      CravingRecord,
      PrefetchHooks Function()
    >;
typedef $$EmergencyStrategiesTableCreateCompanionBuilder =
    EmergencyStrategiesCompanion Function({
      required String id,
      required String title,
      required String description,
      Value<String?> category,
      Value<int> rowid,
    });
typedef $$EmergencyStrategiesTableUpdateCompanionBuilder =
    EmergencyStrategiesCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> description,
      Value<String?> category,
      Value<int> rowid,
    });

class $$EmergencyStrategiesTableFilterComposer
    extends Composer<_$AppDatabase, $EmergencyStrategiesTable> {
  $$EmergencyStrategiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );
}

class $$EmergencyStrategiesTableOrderingComposer
    extends Composer<_$AppDatabase, $EmergencyStrategiesTable> {
  $$EmergencyStrategiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EmergencyStrategiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmergencyStrategiesTable> {
  $$EmergencyStrategiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);
}

class $$EmergencyStrategiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EmergencyStrategiesTable,
          EmergencyStrategy,
          $$EmergencyStrategiesTableFilterComposer,
          $$EmergencyStrategiesTableOrderingComposer,
          $$EmergencyStrategiesTableAnnotationComposer,
          $$EmergencyStrategiesTableCreateCompanionBuilder,
          $$EmergencyStrategiesTableUpdateCompanionBuilder,
          (
            EmergencyStrategy,
            BaseReferences<
              _$AppDatabase,
              $EmergencyStrategiesTable,
              EmergencyStrategy
            >,
          ),
          EmergencyStrategy,
          PrefetchHooks Function()
        > {
  $$EmergencyStrategiesTableTableManager(
    _$AppDatabase db,
    $EmergencyStrategiesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$EmergencyStrategiesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer:
              () => $$EmergencyStrategiesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$EmergencyStrategiesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EmergencyStrategiesCompanion(
                id: id,
                title: title,
                description: description,
                category: category,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String description,
                Value<String?> category = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EmergencyStrategiesCompanion.insert(
                id: id,
                title: title,
                description: description,
                category: category,
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

typedef $$EmergencyStrategiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EmergencyStrategiesTable,
      EmergencyStrategy,
      $$EmergencyStrategiesTableFilterComposer,
      $$EmergencyStrategiesTableOrderingComposer,
      $$EmergencyStrategiesTableAnnotationComposer,
      $$EmergencyStrategiesTableCreateCompanionBuilder,
      $$EmergencyStrategiesTableUpdateCompanionBuilder,
      (
        EmergencyStrategy,
        BaseReferences<
          _$AppDatabase,
          $EmergencyStrategiesTable,
          EmergencyStrategy
        >,
      ),
      EmergencyStrategy,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$QuitSettingsTableTableTableManager get quitSettingsTable =>
      $$QuitSettingsTableTableTableManager(_db, _db.quitSettingsTable);
  $$CravingRecordsTableTableManager get cravingRecords =>
      $$CravingRecordsTableTableManager(_db, _db.cravingRecords);
  $$EmergencyStrategiesTableTableManager get emergencyStrategies =>
      $$EmergencyStrategiesTableTableManager(_db, _db.emergencyStrategies);
}
