// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PhoneData extends DataClass implements Insertable<PhoneData> {
  final int id;
  final String? code;
  final String? number;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  PhoneData(
      {required this.id,
      this.code,
      this.number,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory PhoneData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PhoneData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      number: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String?>(number);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  PhoneCompanion toCompanion(bool nullToAbsent) {
    return PhoneCompanion(
      id: Value(id),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory PhoneData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PhoneData(
      id: serializer.fromJson<int>(json['id']),
      code: serializer.fromJson<String?>(json['code']),
      number: serializer.fromJson<String?>(json['number']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'code': serializer.toJson<String?>(code),
      'number': serializer.toJson<String?>(number),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  PhoneData copyWith(
          {int? id,
          String? code,
          String? number,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      PhoneData(
        id: id ?? this.id,
        code: code ?? this.code,
        number: number ?? this.number,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('PhoneData(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('number: $number, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, code, number, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhoneData &&
          other.id == this.id &&
          other.code == this.code &&
          other.number == this.number &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class PhoneCompanion extends UpdateCompanion<PhoneData> {
  final Value<int> id;
  final Value<String?> code;
  final Value<String?> number;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const PhoneCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.number = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  PhoneCompanion.insert({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.number = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<PhoneData> custom({
    Expression<int>? id,
    Expression<String?>? code,
    Expression<String?>? number,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (number != null) 'number': number,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  PhoneCompanion copyWith(
      {Value<int>? id,
      Value<String?>? code,
      Value<String?>? number,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return PhoneCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      number: number ?? this.number,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (number.present) {
      map['number'] = Variable<String?>(number.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhoneCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('number: $number, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $PhoneTable extends Phone with TableInfo<$PhoneTable, PhoneData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhoneTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String?> number = GeneratedColumn<String?>(
      'number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, code, number, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'phone';
  @override
  String get actualTableName => 'phone';
  @override
  VerificationContext validateIntegrity(Insertable<PhoneData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PhoneData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PhoneData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PhoneTable createAlias(String alias) {
    return $PhoneTable(attachedDatabase, alias);
  }
}

class ContactData extends DataClass implements Insertable<ContactData> {
  final int id;
  final String? email;
  final String? internet;
  final int? phoneId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  ContactData(
      {required this.id,
      this.email,
      this.internet,
      this.phoneId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory ContactData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ContactData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      internet: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}internet']),
      phoneId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phoneId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || internet != null) {
      map['internet'] = Variable<String?>(internet);
    }
    if (!nullToAbsent || phoneId != null) {
      map['phoneId'] = Variable<int?>(phoneId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ContactCompanion toCompanion(bool nullToAbsent) {
    return ContactCompanion(
      id: Value(id),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      internet: internet == null && nullToAbsent
          ? const Value.absent()
          : Value(internet),
      phoneId: phoneId == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory ContactData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContactData(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String?>(json['email']),
      internet: serializer.fromJson<String?>(json['internet']),
      phoneId: serializer.fromJson<int?>(json['phoneId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String?>(email),
      'internet': serializer.toJson<String?>(internet),
      'phoneId': serializer.toJson<int?>(phoneId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  ContactData copyWith(
          {int? id,
          String? email,
          String? internet,
          int? phoneId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      ContactData(
        id: id ?? this.id,
        email: email ?? this.email,
        internet: internet ?? this.internet,
        phoneId: phoneId ?? this.phoneId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('ContactData(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('internet: $internet, ')
          ..write('phoneId: $phoneId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, email, internet, phoneId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContactData &&
          other.id == this.id &&
          other.email == this.email &&
          other.internet == this.internet &&
          other.phoneId == this.phoneId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ContactCompanion extends UpdateCompanion<ContactData> {
  final Value<int> id;
  final Value<String?> email;
  final Value<String?> internet;
  final Value<int?> phoneId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const ContactCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.internet = const Value.absent(),
    this.phoneId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ContactCompanion.insert({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.internet = const Value.absent(),
    this.phoneId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<ContactData> custom({
    Expression<int>? id,
    Expression<String?>? email,
    Expression<String?>? internet,
    Expression<int?>? phoneId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (internet != null) 'internet': internet,
      if (phoneId != null) 'phoneId': phoneId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ContactCompanion copyWith(
      {Value<int>? id,
      Value<String?>? email,
      Value<String?>? internet,
      Value<int?>? phoneId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ContactCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      internet: internet ?? this.internet,
      phoneId: phoneId ?? this.phoneId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (internet.present) {
      map['internet'] = Variable<String?>(internet.value);
    }
    if (phoneId.present) {
      map['phoneId'] = Variable<int?>(phoneId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('internet: $internet, ')
          ..write('phoneId: $phoneId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ContactTable extends Contact with TableInfo<$ContactTable, ContactData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContactTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _internetMeta = const VerificationMeta('internet');
  @override
  late final GeneratedColumn<String?> internet = GeneratedColumn<String?>(
      'internet', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _phoneIdMeta = const VerificationMeta('phoneId');
  @override
  late final GeneratedColumn<int?> phoneId = GeneratedColumn<int?>(
      'phoneId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES phone (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, email, internet, phoneId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'contact';
  @override
  String get actualTableName => 'contact';
  @override
  VerificationContext validateIntegrity(Insertable<ContactData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('internet')) {
      context.handle(_internetMeta,
          internet.isAcceptableOrUnknown(data['internet']!, _internetMeta));
    }
    if (data.containsKey('phoneId')) {
      context.handle(_phoneIdMeta,
          phoneId.isAcceptableOrUnknown(data['phoneId']!, _phoneIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContactData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ContactData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ContactTable createAlias(String alias) {
    return $ContactTable(attachedDatabase, alias);
  }
}

class FileEnterpriseData extends DataClass
    implements Insertable<FileEnterpriseData> {
  final int id;
  final String file;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  FileEnterpriseData(
      {required this.id,
      required this.file,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory FileEnterpriseData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FileEnterpriseData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      file: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['file'] = Variable<String>(file);
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  FileEnterpriseCompanion toCompanion(bool nullToAbsent) {
    return FileEnterpriseCompanion(
      id: Value(id),
      file: Value(file),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory FileEnterpriseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FileEnterpriseData(
      id: serializer.fromJson<int>(json['id']),
      file: serializer.fromJson<String>(json['file']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'file': serializer.toJson<String>(file),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  FileEnterpriseData copyWith(
          {int? id,
          String? file,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      FileEnterpriseData(
        id: id ?? this.id,
        file: file ?? this.file,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('FileEnterpriseData(')
          ..write('id: $id, ')
          ..write('file: $file, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, file, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FileEnterpriseData &&
          other.id == this.id &&
          other.file == this.file &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class FileEnterpriseCompanion extends UpdateCompanion<FileEnterpriseData> {
  final Value<int> id;
  final Value<String> file;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const FileEnterpriseCompanion({
    this.id = const Value.absent(),
    this.file = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  FileEnterpriseCompanion.insert({
    this.id = const Value.absent(),
    required String file,
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : file = Value(file),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<FileEnterpriseData> custom({
    Expression<int>? id,
    Expression<String>? file,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (file != null) 'file': file,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  FileEnterpriseCompanion copyWith(
      {Value<int>? id,
      Value<String>? file,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return FileEnterpriseCompanion(
      id: id ?? this.id,
      file: file ?? this.file,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (file.present) {
      map['file'] = Variable<String>(file.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FileEnterpriseCompanion(')
          ..write('id: $id, ')
          ..write('file: $file, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $FileEnterpriseTable extends FileEnterprise
    with TableInfo<$FileEnterpriseTable, FileEnterpriseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FileEnterpriseTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _fileMeta = const VerificationMeta('file');
  @override
  late final GeneratedColumn<String?> file = GeneratedColumn<String?>(
      'file', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, file, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'file_enterprise';
  @override
  String get actualTableName => 'file_enterprise';
  @override
  VerificationContext validateIntegrity(Insertable<FileEnterpriseData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('file')) {
      context.handle(
          _fileMeta, file.isAcceptableOrUnknown(data['file']!, _fileMeta));
    } else if (isInserting) {
      context.missing(_fileMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FileEnterpriseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FileEnterpriseData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FileEnterpriseTable createAlias(String alias) {
    return $FileEnterpriseTable(attachedDatabase, alias);
  }
}

class SupportData extends DataClass implements Insertable<SupportData> {
  final int id;
  final DateTime createdAt;
  final int? imageId;
  final int version;
  final String? cloudId;
  SupportData(
      {required this.id,
      required this.createdAt,
      this.imageId,
      required this.version,
      this.cloudId});
  factory SupportData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SupportData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      imageId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}imageId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['createdAt'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || imageId != null) {
      map['imageId'] = Variable<int?>(imageId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  SupportCompanion toCompanion(bool nullToAbsent) {
    return SupportCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      imageId: imageId == null && nullToAbsent
          ? const Value.absent()
          : Value(imageId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory SupportData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupportData(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      imageId: serializer.fromJson<int?>(json['imageId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'imageId': serializer.toJson<int?>(imageId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  SupportData copyWith(
          {int? id,
          DateTime? createdAt,
          int? imageId,
          int? version,
          String? cloudId}) =>
      SupportData(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        imageId: imageId ?? this.imageId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('SupportData(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('imageId: $imageId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, createdAt, imageId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupportData &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.imageId == this.imageId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class SupportCompanion extends UpdateCompanion<SupportData> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<int?> imageId;
  final Value<int> version;
  final Value<String?> cloudId;
  const SupportCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.imageId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  SupportCompanion.insert({
    this.id = const Value.absent(),
    required DateTime createdAt,
    this.imageId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<SupportData> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<int?>? imageId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'createdAt': createdAt,
      if (imageId != null) 'imageId': imageId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  SupportCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<int?>? imageId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return SupportCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      imageId: imageId ?? this.imageId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (imageId.present) {
      map['imageId'] = Variable<int?>(imageId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupportCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('imageId: $imageId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $SupportTable extends Support with TableInfo<$SupportTable, SupportData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupportTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _imageIdMeta = const VerificationMeta('imageId');
  @override
  late final GeneratedColumn<int?> imageId = GeneratedColumn<int?>(
      'imageId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES file_enterprise (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, imageId, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'support';
  @override
  String get actualTableName => 'support';
  @override
  VerificationContext validateIntegrity(Insertable<SupportData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('imageId')) {
      context.handle(_imageIdMeta,
          imageId.isAcceptableOrUnknown(data['imageId']!, _imageIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupportData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SupportData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SupportTable createAlias(String alias) {
    return $SupportTable(attachedDatabase, alias);
  }
}

class Addres extends DataClass implements Insertable<Addres> {
  final int id;
  final String? country;
  final String? town;
  final String? city;
  final String? commune;
  final String? quater;
  final String? street;
  final String? number;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  Addres(
      {required this.id,
      this.country,
      this.town,
      this.city,
      this.commune,
      this.quater,
      this.street,
      this.number,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory Addres.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Addres(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country']),
      town: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}town']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      commune: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}commune']),
      quater: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quater']),
      street: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}street']),
      number: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String?>(country);
    }
    if (!nullToAbsent || town != null) {
      map['town'] = Variable<String?>(town);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || commune != null) {
      map['commune'] = Variable<String?>(commune);
    }
    if (!nullToAbsent || quater != null) {
      map['quater'] = Variable<String?>(quater);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String?>(street);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String?>(number);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: Value(id),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      town: town == null && nullToAbsent ? const Value.absent() : Value(town),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      commune: commune == null && nullToAbsent
          ? const Value.absent()
          : Value(commune),
      quater:
          quater == null && nullToAbsent ? const Value.absent() : Value(quater),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory Addres.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Addres(
      id: serializer.fromJson<int>(json['id']),
      country: serializer.fromJson<String?>(json['country']),
      town: serializer.fromJson<String?>(json['town']),
      city: serializer.fromJson<String?>(json['city']),
      commune: serializer.fromJson<String?>(json['commune']),
      quater: serializer.fromJson<String?>(json['quater']),
      street: serializer.fromJson<String?>(json['street']),
      number: serializer.fromJson<String?>(json['number']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'country': serializer.toJson<String?>(country),
      'town': serializer.toJson<String?>(town),
      'city': serializer.toJson<String?>(city),
      'commune': serializer.toJson<String?>(commune),
      'quater': serializer.toJson<String?>(quater),
      'street': serializer.toJson<String?>(street),
      'number': serializer.toJson<String?>(number),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  Addres copyWith(
          {int? id,
          String? country,
          String? town,
          String? city,
          String? commune,
          String? quater,
          String? street,
          String? number,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      Addres(
        id: id ?? this.id,
        country: country ?? this.country,
        town: town ?? this.town,
        city: city ?? this.city,
        commune: commune ?? this.commune,
        quater: quater ?? this.quater,
        street: street ?? this.street,
        number: number ?? this.number,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('Addres(')
          ..write('id: $id, ')
          ..write('country: $country, ')
          ..write('town: $town, ')
          ..write('city: $city, ')
          ..write('commune: $commune, ')
          ..write('quater: $quater, ')
          ..write('street: $street, ')
          ..write('number: $number, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, country, town, city, commune, quater,
      street, number, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addres &&
          other.id == this.id &&
          other.country == this.country &&
          other.town == this.town &&
          other.city == this.city &&
          other.commune == this.commune &&
          other.quater == this.quater &&
          other.street == this.street &&
          other.number == this.number &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class AddressCompanion extends UpdateCompanion<Addres> {
  final Value<int> id;
  final Value<String?> country;
  final Value<String?> town;
  final Value<String?> city;
  final Value<String?> commune;
  final Value<String?> quater;
  final Value<String?> street;
  final Value<String?> number;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.town = const Value.absent(),
    this.city = const Value.absent(),
    this.commune = const Value.absent(),
    this.quater = const Value.absent(),
    this.street = const Value.absent(),
    this.number = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.town = const Value.absent(),
    this.city = const Value.absent(),
    this.commune = const Value.absent(),
    this.quater = const Value.absent(),
    this.street = const Value.absent(),
    this.number = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<Addres> custom({
    Expression<int>? id,
    Expression<String?>? country,
    Expression<String?>? town,
    Expression<String?>? city,
    Expression<String?>? commune,
    Expression<String?>? quater,
    Expression<String?>? street,
    Expression<String?>? number,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (country != null) 'country': country,
      if (town != null) 'town': town,
      if (city != null) 'city': city,
      if (commune != null) 'commune': commune,
      if (quater != null) 'quater': quater,
      if (street != null) 'street': street,
      if (number != null) 'number': number,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  AddressCompanion copyWith(
      {Value<int>? id,
      Value<String?>? country,
      Value<String?>? town,
      Value<String?>? city,
      Value<String?>? commune,
      Value<String?>? quater,
      Value<String?>? street,
      Value<String?>? number,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return AddressCompanion(
      id: id ?? this.id,
      country: country ?? this.country,
      town: town ?? this.town,
      city: city ?? this.city,
      commune: commune ?? this.commune,
      quater: quater ?? this.quater,
      street: street ?? this.street,
      number: number ?? this.number,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (country.present) {
      map['country'] = Variable<String?>(country.value);
    }
    if (town.present) {
      map['town'] = Variable<String?>(town.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (commune.present) {
      map['commune'] = Variable<String?>(commune.value);
    }
    if (quater.present) {
      map['quater'] = Variable<String?>(quater.value);
    }
    if (street.present) {
      map['street'] = Variable<String?>(street.value);
    }
    if (number.present) {
      map['number'] = Variable<String?>(number.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('country: $country, ')
          ..write('town: $town, ')
          ..write('city: $city, ')
          ..write('commune: $commune, ')
          ..write('quater: $quater, ')
          ..write('street: $street, ')
          ..write('number: $number, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $AddressTable extends Address with TableInfo<$AddressTable, Addres> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  @override
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _townMeta = const VerificationMeta('town');
  @override
  late final GeneratedColumn<String?> town = GeneratedColumn<String?>(
      'town', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _communeMeta = const VerificationMeta('commune');
  @override
  late final GeneratedColumn<String?> commune = GeneratedColumn<String?>(
      'commune', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _quaterMeta = const VerificationMeta('quater');
  @override
  late final GeneratedColumn<String?> quater = GeneratedColumn<String?>(
      'quater', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String?> street = GeneratedColumn<String?>(
      'street', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String?> number = GeneratedColumn<String?>(
      'number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        country,
        town,
        city,
        commune,
        quater,
        street,
        number,
        createdAt,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'address';
  @override
  String get actualTableName => 'address';
  @override
  VerificationContext validateIntegrity(Insertable<Addres> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('town')) {
      context.handle(
          _townMeta, town.isAcceptableOrUnknown(data['town']!, _townMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('commune')) {
      context.handle(_communeMeta,
          commune.isAcceptableOrUnknown(data['commune']!, _communeMeta));
    }
    if (data.containsKey('quater')) {
      context.handle(_quaterMeta,
          quater.isAcceptableOrUnknown(data['quater']!, _quaterMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Addres map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Addres.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AddressTable createAlias(String alias) {
    return $AddressTable(attachedDatabase, alias);
  }
}

class BankData extends DataClass implements Insertable<BankData> {
  final int id;
  final String? bankname;
  final String? accountName;
  final String? code;
  final String? accountNumber;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  BankData(
      {required this.id,
      this.bankname,
      this.accountName,
      this.code,
      this.accountNumber,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory BankData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return BankData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      bankname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bankname']),
      accountName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}accountName']),
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      accountNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}accountNumber']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || bankname != null) {
      map['bankname'] = Variable<String?>(bankname);
    }
    if (!nullToAbsent || accountName != null) {
      map['accountName'] = Variable<String?>(accountName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || accountNumber != null) {
      map['accountNumber'] = Variable<String?>(accountNumber);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  BankCompanion toCompanion(bool nullToAbsent) {
    return BankCompanion(
      id: Value(id),
      bankname: bankname == null && nullToAbsent
          ? const Value.absent()
          : Value(bankname),
      accountName: accountName == null && nullToAbsent
          ? const Value.absent()
          : Value(accountName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      accountNumber: accountNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(accountNumber),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory BankData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BankData(
      id: serializer.fromJson<int>(json['id']),
      bankname: serializer.fromJson<String?>(json['bankname']),
      accountName: serializer.fromJson<String?>(json['accountName']),
      code: serializer.fromJson<String?>(json['code']),
      accountNumber: serializer.fromJson<String?>(json['accountNumber']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bankname': serializer.toJson<String?>(bankname),
      'accountName': serializer.toJson<String?>(accountName),
      'code': serializer.toJson<String?>(code),
      'accountNumber': serializer.toJson<String?>(accountNumber),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  BankData copyWith(
          {int? id,
          String? bankname,
          String? accountName,
          String? code,
          String? accountNumber,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      BankData(
        id: id ?? this.id,
        bankname: bankname ?? this.bankname,
        accountName: accountName ?? this.accountName,
        code: code ?? this.code,
        accountNumber: accountNumber ?? this.accountNumber,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('BankData(')
          ..write('id: $id, ')
          ..write('bankname: $bankname, ')
          ..write('accountName: $accountName, ')
          ..write('code: $code, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bankname, accountName, code,
      accountNumber, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BankData &&
          other.id == this.id &&
          other.bankname == this.bankname &&
          other.accountName == this.accountName &&
          other.code == this.code &&
          other.accountNumber == this.accountNumber &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class BankCompanion extends UpdateCompanion<BankData> {
  final Value<int> id;
  final Value<String?> bankname;
  final Value<String?> accountName;
  final Value<String?> code;
  final Value<String?> accountNumber;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const BankCompanion({
    this.id = const Value.absent(),
    this.bankname = const Value.absent(),
    this.accountName = const Value.absent(),
    this.code = const Value.absent(),
    this.accountNumber = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  BankCompanion.insert({
    this.id = const Value.absent(),
    this.bankname = const Value.absent(),
    this.accountName = const Value.absent(),
    this.code = const Value.absent(),
    this.accountNumber = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<BankData> custom({
    Expression<int>? id,
    Expression<String?>? bankname,
    Expression<String?>? accountName,
    Expression<String?>? code,
    Expression<String?>? accountNumber,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bankname != null) 'bankname': bankname,
      if (accountName != null) 'accountName': accountName,
      if (code != null) 'code': code,
      if (accountNumber != null) 'accountNumber': accountNumber,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  BankCompanion copyWith(
      {Value<int>? id,
      Value<String?>? bankname,
      Value<String?>? accountName,
      Value<String?>? code,
      Value<String?>? accountNumber,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return BankCompanion(
      id: id ?? this.id,
      bankname: bankname ?? this.bankname,
      accountName: accountName ?? this.accountName,
      code: code ?? this.code,
      accountNumber: accountNumber ?? this.accountNumber,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bankname.present) {
      map['bankname'] = Variable<String?>(bankname.value);
    }
    if (accountName.present) {
      map['accountName'] = Variable<String?>(accountName.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (accountNumber.present) {
      map['accountNumber'] = Variable<String?>(accountNumber.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BankCompanion(')
          ..write('id: $id, ')
          ..write('bankname: $bankname, ')
          ..write('accountName: $accountName, ')
          ..write('code: $code, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $BankTable extends Bank with TableInfo<$BankTable, BankData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BankTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _banknameMeta = const VerificationMeta('bankname');
  @override
  late final GeneratedColumn<String?> bankname = GeneratedColumn<String?>(
      'bankname', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _accountNameMeta =
      const VerificationMeta('accountName');
  @override
  late final GeneratedColumn<String?> accountName = GeneratedColumn<String?>(
      'accountName', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _accountNumberMeta =
      const VerificationMeta('accountNumber');
  @override
  late final GeneratedColumn<String?> accountNumber = GeneratedColumn<String?>(
      'accountNumber', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bankname,
        accountName,
        code,
        accountNumber,
        createdAt,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'bank';
  @override
  String get actualTableName => 'bank';
  @override
  VerificationContext validateIntegrity(Insertable<BankData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bankname')) {
      context.handle(_banknameMeta,
          bankname.isAcceptableOrUnknown(data['bankname']!, _banknameMeta));
    }
    if (data.containsKey('accountName')) {
      context.handle(
          _accountNameMeta,
          accountName.isAcceptableOrUnknown(
              data['accountName']!, _accountNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('accountNumber')) {
      context.handle(
          _accountNumberMeta,
          accountNumber.isAcceptableOrUnknown(
              data['accountNumber']!, _accountNumberMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BankData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return BankData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BankTable createAlias(String alias) {
    return $BankTable(attachedDatabase, alias);
  }
}

class EnterpriseData extends DataClass implements Insertable<EnterpriseData> {
  final int id;
  final String? reason;
  final String? description;
  final String? rccm;
  final String? tax;
  final String? codeEnterprise;
  final String idnat;
  final int? supportId;
  final int? bankId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  EnterpriseData(
      {required this.id,
      this.reason,
      this.description,
      this.rccm,
      this.tax,
      this.codeEnterprise,
      required this.idnat,
      this.supportId,
      this.bankId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory EnterpriseData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EnterpriseData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      reason: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reason']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      rccm: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rccm']),
      tax: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tax']),
      codeEnterprise: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}codeEnterprise']),
      idnat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}idnat'])!,
      supportId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}supportId']),
      bankId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bankId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String?>(reason);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || rccm != null) {
      map['rccm'] = Variable<String?>(rccm);
    }
    if (!nullToAbsent || tax != null) {
      map['tax'] = Variable<String?>(tax);
    }
    if (!nullToAbsent || codeEnterprise != null) {
      map['codeEnterprise'] = Variable<String?>(codeEnterprise);
    }
    map['idnat'] = Variable<String>(idnat);
    if (!nullToAbsent || supportId != null) {
      map['supportId'] = Variable<int?>(supportId);
    }
    if (!nullToAbsent || bankId != null) {
      map['bankId'] = Variable<int?>(bankId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  EnterpriseCompanion toCompanion(bool nullToAbsent) {
    return EnterpriseCompanion(
      id: Value(id),
      reason:
          reason == null && nullToAbsent ? const Value.absent() : Value(reason),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      rccm: rccm == null && nullToAbsent ? const Value.absent() : Value(rccm),
      tax: tax == null && nullToAbsent ? const Value.absent() : Value(tax),
      codeEnterprise: codeEnterprise == null && nullToAbsent
          ? const Value.absent()
          : Value(codeEnterprise),
      idnat: Value(idnat),
      supportId: supportId == null && nullToAbsent
          ? const Value.absent()
          : Value(supportId),
      bankId:
          bankId == null && nullToAbsent ? const Value.absent() : Value(bankId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory EnterpriseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EnterpriseData(
      id: serializer.fromJson<int>(json['id']),
      reason: serializer.fromJson<String?>(json['reason']),
      description: serializer.fromJson<String?>(json['description']),
      rccm: serializer.fromJson<String?>(json['rccm']),
      tax: serializer.fromJson<String?>(json['tax']),
      codeEnterprise: serializer.fromJson<String?>(json['codeEnterprise']),
      idnat: serializer.fromJson<String>(json['idnat']),
      supportId: serializer.fromJson<int?>(json['supportId']),
      bankId: serializer.fromJson<int?>(json['bankId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'reason': serializer.toJson<String?>(reason),
      'description': serializer.toJson<String?>(description),
      'rccm': serializer.toJson<String?>(rccm),
      'tax': serializer.toJson<String?>(tax),
      'codeEnterprise': serializer.toJson<String?>(codeEnterprise),
      'idnat': serializer.toJson<String>(idnat),
      'supportId': serializer.toJson<int?>(supportId),
      'bankId': serializer.toJson<int?>(bankId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  EnterpriseData copyWith(
          {int? id,
          String? reason,
          String? description,
          String? rccm,
          String? tax,
          String? codeEnterprise,
          String? idnat,
          int? supportId,
          int? bankId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      EnterpriseData(
        id: id ?? this.id,
        reason: reason ?? this.reason,
        description: description ?? this.description,
        rccm: rccm ?? this.rccm,
        tax: tax ?? this.tax,
        codeEnterprise: codeEnterprise ?? this.codeEnterprise,
        idnat: idnat ?? this.idnat,
        supportId: supportId ?? this.supportId,
        bankId: bankId ?? this.bankId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('EnterpriseData(')
          ..write('id: $id, ')
          ..write('reason: $reason, ')
          ..write('description: $description, ')
          ..write('rccm: $rccm, ')
          ..write('tax: $tax, ')
          ..write('codeEnterprise: $codeEnterprise, ')
          ..write('idnat: $idnat, ')
          ..write('supportId: $supportId, ')
          ..write('bankId: $bankId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, reason, description, rccm, tax,
      codeEnterprise, idnat, supportId, bankId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EnterpriseData &&
          other.id == this.id &&
          other.reason == this.reason &&
          other.description == this.description &&
          other.rccm == this.rccm &&
          other.tax == this.tax &&
          other.codeEnterprise == this.codeEnterprise &&
          other.idnat == this.idnat &&
          other.supportId == this.supportId &&
          other.bankId == this.bankId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class EnterpriseCompanion extends UpdateCompanion<EnterpriseData> {
  final Value<int> id;
  final Value<String?> reason;
  final Value<String?> description;
  final Value<String?> rccm;
  final Value<String?> tax;
  final Value<String?> codeEnterprise;
  final Value<String> idnat;
  final Value<int?> supportId;
  final Value<int?> bankId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const EnterpriseCompanion({
    this.id = const Value.absent(),
    this.reason = const Value.absent(),
    this.description = const Value.absent(),
    this.rccm = const Value.absent(),
    this.tax = const Value.absent(),
    this.codeEnterprise = const Value.absent(),
    this.idnat = const Value.absent(),
    this.supportId = const Value.absent(),
    this.bankId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  EnterpriseCompanion.insert({
    this.id = const Value.absent(),
    this.reason = const Value.absent(),
    this.description = const Value.absent(),
    this.rccm = const Value.absent(),
    this.tax = const Value.absent(),
    this.codeEnterprise = const Value.absent(),
    required String idnat,
    this.supportId = const Value.absent(),
    this.bankId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : idnat = Value(idnat),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<EnterpriseData> custom({
    Expression<int>? id,
    Expression<String?>? reason,
    Expression<String?>? description,
    Expression<String?>? rccm,
    Expression<String?>? tax,
    Expression<String?>? codeEnterprise,
    Expression<String>? idnat,
    Expression<int?>? supportId,
    Expression<int?>? bankId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reason != null) 'reason': reason,
      if (description != null) 'description': description,
      if (rccm != null) 'rccm': rccm,
      if (tax != null) 'tax': tax,
      if (codeEnterprise != null) 'codeEnterprise': codeEnterprise,
      if (idnat != null) 'idnat': idnat,
      if (supportId != null) 'supportId': supportId,
      if (bankId != null) 'bankId': bankId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  EnterpriseCompanion copyWith(
      {Value<int>? id,
      Value<String?>? reason,
      Value<String?>? description,
      Value<String?>? rccm,
      Value<String?>? tax,
      Value<String?>? codeEnterprise,
      Value<String>? idnat,
      Value<int?>? supportId,
      Value<int?>? bankId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return EnterpriseCompanion(
      id: id ?? this.id,
      reason: reason ?? this.reason,
      description: description ?? this.description,
      rccm: rccm ?? this.rccm,
      tax: tax ?? this.tax,
      codeEnterprise: codeEnterprise ?? this.codeEnterprise,
      idnat: idnat ?? this.idnat,
      supportId: supportId ?? this.supportId,
      bankId: bankId ?? this.bankId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String?>(reason.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (rccm.present) {
      map['rccm'] = Variable<String?>(rccm.value);
    }
    if (tax.present) {
      map['tax'] = Variable<String?>(tax.value);
    }
    if (codeEnterprise.present) {
      map['codeEnterprise'] = Variable<String?>(codeEnterprise.value);
    }
    if (idnat.present) {
      map['idnat'] = Variable<String>(idnat.value);
    }
    if (supportId.present) {
      map['supportId'] = Variable<int?>(supportId.value);
    }
    if (bankId.present) {
      map['bankId'] = Variable<int?>(bankId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnterpriseCompanion(')
          ..write('id: $id, ')
          ..write('reason: $reason, ')
          ..write('description: $description, ')
          ..write('rccm: $rccm, ')
          ..write('tax: $tax, ')
          ..write('codeEnterprise: $codeEnterprise, ')
          ..write('idnat: $idnat, ')
          ..write('supportId: $supportId, ')
          ..write('bankId: $bankId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $EnterpriseTable extends Enterprise
    with TableInfo<$EnterpriseTable, EnterpriseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EnterpriseTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String?> reason = GeneratedColumn<String?>(
      'reason', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _rccmMeta = const VerificationMeta('rccm');
  @override
  late final GeneratedColumn<String?> rccm = GeneratedColumn<String?>(
      'rccm', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<String?> tax = GeneratedColumn<String?>(
      'tax', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _codeEnterpriseMeta =
      const VerificationMeta('codeEnterprise');
  @override
  late final GeneratedColumn<String?> codeEnterprise = GeneratedColumn<String?>(
      'codeEnterprise', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _idnatMeta = const VerificationMeta('idnat');
  @override
  late final GeneratedColumn<String?> idnat = GeneratedColumn<String?>(
      'idnat', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _supportIdMeta = const VerificationMeta('supportId');
  @override
  late final GeneratedColumn<int?> supportId = GeneratedColumn<int?>(
      'supportId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES support (id)');
  final VerificationMeta _bankIdMeta = const VerificationMeta('bankId');
  @override
  late final GeneratedColumn<int?> bankId = GeneratedColumn<int?>(
      'bankId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES bank (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        reason,
        description,
        rccm,
        tax,
        codeEnterprise,
        idnat,
        supportId,
        bankId,
        createdAt,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'enterprise';
  @override
  String get actualTableName => 'enterprise';
  @override
  VerificationContext validateIntegrity(Insertable<EnterpriseData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('rccm')) {
      context.handle(
          _rccmMeta, rccm.isAcceptableOrUnknown(data['rccm']!, _rccmMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('codeEnterprise')) {
      context.handle(
          _codeEnterpriseMeta,
          codeEnterprise.isAcceptableOrUnknown(
              data['codeEnterprise']!, _codeEnterpriseMeta));
    }
    if (data.containsKey('idnat')) {
      context.handle(
          _idnatMeta, idnat.isAcceptableOrUnknown(data['idnat']!, _idnatMeta));
    } else if (isInserting) {
      context.missing(_idnatMeta);
    }
    if (data.containsKey('supportId')) {
      context.handle(_supportIdMeta,
          supportId.isAcceptableOrUnknown(data['supportId']!, _supportIdMeta));
    }
    if (data.containsKey('bankId')) {
      context.handle(_bankIdMeta,
          bankId.isAcceptableOrUnknown(data['bankId']!, _bankIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EnterpriseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EnterpriseData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EnterpriseTable createAlias(String alias) {
    return $EnterpriseTable(attachedDatabase, alias);
  }
}

class EntrytypeproductData extends DataClass
    implements Insertable<EntrytypeproductData> {
  final int id;
  final String designation;
  final int? enterpriseId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  EntrytypeproductData(
      {required this.id,
      required this.designation,
      this.enterpriseId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory EntrytypeproductData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EntrytypeproductData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['designation'] = Variable<String>(designation);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  EntrytypeproductCompanion toCompanion(bool nullToAbsent) {
    return EntrytypeproductCompanion(
      id: Value(id),
      designation: Value(designation),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory EntrytypeproductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EntrytypeproductData(
      id: serializer.fromJson<int>(json['id']),
      designation: serializer.fromJson<String>(json['designation']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'designation': serializer.toJson<String>(designation),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  EntrytypeproductData copyWith(
          {int? id,
          String? designation,
          int? enterpriseId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      EntrytypeproductData(
        id: id ?? this.id,
        designation: designation ?? this.designation,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('EntrytypeproductData(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, designation, enterpriseId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EntrytypeproductData &&
          other.id == this.id &&
          other.designation == this.designation &&
          other.enterpriseId == this.enterpriseId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class EntrytypeproductCompanion extends UpdateCompanion<EntrytypeproductData> {
  final Value<int> id;
  final Value<String> designation;
  final Value<int?> enterpriseId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const EntrytypeproductCompanion({
    this.id = const Value.absent(),
    this.designation = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  EntrytypeproductCompanion.insert({
    this.id = const Value.absent(),
    required String designation,
    this.enterpriseId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<EntrytypeproductData> custom({
    Expression<int>? id,
    Expression<String>? designation,
    Expression<int?>? enterpriseId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (designation != null) 'designation': designation,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  EntrytypeproductCompanion copyWith(
      {Value<int>? id,
      Value<String>? designation,
      Value<int?>? enterpriseId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return EntrytypeproductCompanion(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntrytypeproductCompanion(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $EntrytypeproductTable extends Entrytypeproduct
    with TableInfo<$EntrytypeproductTable, EntrytypeproductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EntrytypeproductTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, designation, enterpriseId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'entrytypeproduct';
  @override
  String get actualTableName => 'entrytypeproduct';
  @override
  VerificationContext validateIntegrity(
      Insertable<EntrytypeproductData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EntrytypeproductData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EntrytypeproductData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EntrytypeproductTable createAlias(String alias) {
    return $EntrytypeproductTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String? firstname;
  final String? secondname;
  final int? photoId;
  final int? contactId;
  final int? addressId;
  final int? enterpriseId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  UserData(
      {required this.id,
      this.firstname,
      this.secondname,
      this.photoId,
      this.contactId,
      this.addressId,
      this.enterpriseId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory UserData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      firstname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}firstname']),
      secondname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}secondname']),
      photoId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}photoId']),
      contactId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contactId']),
      addressId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}addressId']),
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || firstname != null) {
      map['firstname'] = Variable<String?>(firstname);
    }
    if (!nullToAbsent || secondname != null) {
      map['secondname'] = Variable<String?>(secondname);
    }
    if (!nullToAbsent || photoId != null) {
      map['photoId'] = Variable<int?>(photoId);
    }
    if (!nullToAbsent || contactId != null) {
      map['contactId'] = Variable<int?>(contactId);
    }
    if (!nullToAbsent || addressId != null) {
      map['addressId'] = Variable<int?>(addressId);
    }
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      firstname: firstname == null && nullToAbsent
          ? const Value.absent()
          : Value(firstname),
      secondname: secondname == null && nullToAbsent
          ? const Value.absent()
          : Value(secondname),
      photoId: photoId == null && nullToAbsent
          ? const Value.absent()
          : Value(photoId),
      contactId: contactId == null && nullToAbsent
          ? const Value.absent()
          : Value(contactId),
      addressId: addressId == null && nullToAbsent
          ? const Value.absent()
          : Value(addressId),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      firstname: serializer.fromJson<String?>(json['firstname']),
      secondname: serializer.fromJson<String?>(json['secondname']),
      photoId: serializer.fromJson<int?>(json['photoId']),
      contactId: serializer.fromJson<int?>(json['contactId']),
      addressId: serializer.fromJson<int?>(json['addressId']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'firstname': serializer.toJson<String?>(firstname),
      'secondname': serializer.toJson<String?>(secondname),
      'photoId': serializer.toJson<int?>(photoId),
      'contactId': serializer.toJson<int?>(contactId),
      'addressId': serializer.toJson<int?>(addressId),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  UserData copyWith(
          {int? id,
          String? firstname,
          String? secondname,
          int? photoId,
          int? contactId,
          int? addressId,
          int? enterpriseId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      UserData(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        secondname: secondname ?? this.secondname,
        photoId: photoId ?? this.photoId,
        contactId: contactId ?? this.contactId,
        addressId: addressId ?? this.addressId,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('firstname: $firstname, ')
          ..write('secondname: $secondname, ')
          ..write('photoId: $photoId, ')
          ..write('contactId: $contactId, ')
          ..write('addressId: $addressId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firstname, secondname, photoId, contactId,
      addressId, enterpriseId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.firstname == this.firstname &&
          other.secondname == this.secondname &&
          other.photoId == this.photoId &&
          other.contactId == this.contactId &&
          other.addressId == this.addressId &&
          other.enterpriseId == this.enterpriseId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String?> firstname;
  final Value<String?> secondname;
  final Value<int?> photoId;
  final Value<int?> contactId;
  final Value<int?> addressId;
  final Value<int?> enterpriseId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const UserCompanion({
    this.id = const Value.absent(),
    this.firstname = const Value.absent(),
    this.secondname = const Value.absent(),
    this.photoId = const Value.absent(),
    this.contactId = const Value.absent(),
    this.addressId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    this.firstname = const Value.absent(),
    this.secondname = const Value.absent(),
    this.photoId = const Value.absent(),
    this.contactId = const Value.absent(),
    this.addressId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String?>? firstname,
    Expression<String?>? secondname,
    Expression<int?>? photoId,
    Expression<int?>? contactId,
    Expression<int?>? addressId,
    Expression<int?>? enterpriseId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstname != null) 'firstname': firstname,
      if (secondname != null) 'secondname': secondname,
      if (photoId != null) 'photoId': photoId,
      if (contactId != null) 'contactId': contactId,
      if (addressId != null) 'addressId': addressId,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String?>? firstname,
      Value<String?>? secondname,
      Value<int?>? photoId,
      Value<int?>? contactId,
      Value<int?>? addressId,
      Value<int?>? enterpriseId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return UserCompanion(
      id: id ?? this.id,
      firstname: firstname ?? this.firstname,
      secondname: secondname ?? this.secondname,
      photoId: photoId ?? this.photoId,
      contactId: contactId ?? this.contactId,
      addressId: addressId ?? this.addressId,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstname.present) {
      map['firstname'] = Variable<String?>(firstname.value);
    }
    if (secondname.present) {
      map['secondname'] = Variable<String?>(secondname.value);
    }
    if (photoId.present) {
      map['photoId'] = Variable<int?>(photoId.value);
    }
    if (contactId.present) {
      map['contactId'] = Variable<int?>(contactId.value);
    }
    if (addressId.present) {
      map['addressId'] = Variable<int?>(addressId.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('firstname: $firstname, ')
          ..write('secondname: $secondname, ')
          ..write('photoId: $photoId, ')
          ..write('contactId: $contactId, ')
          ..write('addressId: $addressId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _firstnameMeta = const VerificationMeta('firstname');
  @override
  late final GeneratedColumn<String?> firstname = GeneratedColumn<String?>(
      'firstname', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _secondnameMeta = const VerificationMeta('secondname');
  @override
  late final GeneratedColumn<String?> secondname = GeneratedColumn<String?>(
      'secondname', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _photoIdMeta = const VerificationMeta('photoId');
  @override
  late final GeneratedColumn<int?> photoId = GeneratedColumn<int?>(
      'photoId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES file_enterprise (id)');
  final VerificationMeta _contactIdMeta = const VerificationMeta('contactId');
  @override
  late final GeneratedColumn<int?> contactId = GeneratedColumn<int?>(
      'contactId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES contact (id)');
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<int?> addressId = GeneratedColumn<int?>(
      'addressId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES address (id)');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstname,
        secondname,
        photoId,
        contactId,
        addressId,
        enterpriseId,
        createdAt,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('firstname')) {
      context.handle(_firstnameMeta,
          firstname.isAcceptableOrUnknown(data['firstname']!, _firstnameMeta));
    }
    if (data.containsKey('secondname')) {
      context.handle(
          _secondnameMeta,
          secondname.isAcceptableOrUnknown(
              data['secondname']!, _secondnameMeta));
    }
    if (data.containsKey('photoId')) {
      context.handle(_photoIdMeta,
          photoId.isAcceptableOrUnknown(data['photoId']!, _photoIdMeta));
    }
    if (data.containsKey('contactId')) {
      context.handle(_contactIdMeta,
          contactId.isAcceptableOrUnknown(data['contactId']!, _contactIdMeta));
    }
    if (data.containsKey('addressId')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['addressId']!, _addressIdMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class CredentialData extends DataClass implements Insertable<CredentialData> {
  final int id;
  final String username;
  final String password;
  final String token;
  final int? userId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  CredentialData(
      {required this.id,
      required this.username,
      required this.password,
      required this.token,
      this.userId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory CredentialData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CredentialData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username'])!,
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password'])!,
      token: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}token'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    map['token'] = Variable<String>(token);
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  CredentialCompanion toCompanion(bool nullToAbsent) {
    return CredentialCompanion(
      id: Value(id),
      username: Value(username),
      password: Value(password),
      token: Value(token),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory CredentialData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CredentialData(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      token: serializer.fromJson<String>(json['token']),
      userId: serializer.fromJson<int?>(json['userId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'token': serializer.toJson<String>(token),
      'userId': serializer.toJson<int?>(userId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  CredentialData copyWith(
          {int? id,
          String? username,
          String? password,
          String? token,
          int? userId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      CredentialData(
        id: id ?? this.id,
        username: username ?? this.username,
        password: password ?? this.password,
        token: token ?? this.token,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('CredentialData(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('token: $token, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, username, password, token, userId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CredentialData &&
          other.id == this.id &&
          other.username == this.username &&
          other.password == this.password &&
          other.token == this.token &&
          other.userId == this.userId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class CredentialCompanion extends UpdateCompanion<CredentialData> {
  final Value<int> id;
  final Value<String> username;
  final Value<String> password;
  final Value<String> token;
  final Value<int?> userId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const CredentialCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.token = const Value.absent(),
    this.userId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  CredentialCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    required String password,
    required String token,
    this.userId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : username = Value(username),
        password = Value(password),
        token = Value(token),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<CredentialData> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? password,
    Expression<String>? token,
    Expression<int?>? userId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (token != null) 'token': token,
      if (userId != null) 'userId': userId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  CredentialCompanion copyWith(
      {Value<int>? id,
      Value<String>? username,
      Value<String>? password,
      Value<String>? token,
      Value<int?>? userId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return CredentialCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CredentialCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('token: $token, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $CredentialTable extends Credential
    with TableInfo<$CredentialTable, CredentialData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CredentialTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  @override
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String?> token = GeneratedColumn<String?>(
      'token', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, username, password, token, userId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'credential';
  @override
  String get actualTableName => 'credential';
  @override
  VerificationContext validateIntegrity(Insertable<CredentialData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CredentialData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CredentialData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CredentialTable createAlias(String alias) {
    return $CredentialTable(attachedDatabase, alias);
  }
}

class EmployeeData extends DataClass implements Insertable<EmployeeData> {
  final int id;
  final int? enterpriseId;
  final int? userId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  EmployeeData(
      {required this.id,
      this.enterpriseId,
      this.userId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory EmployeeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EmployeeData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: Value(id),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int>(json['id']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      userId: serializer.fromJson<int?>(json['userId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'userId': serializer.toJson<int?>(userId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  EmployeeData copyWith(
          {int? id,
          int? enterpriseId,
          int? userId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      EmployeeData(
        id: id ?? this.id,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, enterpriseId, userId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.enterpriseId == this.enterpriseId &&
          other.userId == this.userId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int> id;
  final Value<int?> enterpriseId;
  final Value<int?> userId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.userId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  EmployeeCompanion.insert({
    this.id = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.userId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<EmployeeData> custom({
    Expression<int>? id,
    Expression<int?>? enterpriseId,
    Expression<int?>? userId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (userId != null) 'userId': userId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int>? id,
      Value<int?>? enterpriseId,
      Value<int?>? userId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, enterpriseId, userId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'employee';
  @override
  String get actualTableName => 'employee';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EmployeeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(attachedDatabase, alias);
  }
}

class RoleData extends DataClass implements Insertable<RoleData> {
  final int id;
  final String designation;
  final String description;
  final DateTime createdAt;
  final int version;
  final int? userId;
  final String? cloudId;
  RoleData(
      {required this.id,
      required this.designation,
      required this.description,
      required this.createdAt,
      required this.version,
      this.userId,
      this.cloudId});
  factory RoleData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RoleData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['designation'] = Variable<String>(designation);
    map['description'] = Variable<String>(description);
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  RoleCompanion toCompanion(bool nullToAbsent) {
    return RoleCompanion(
      id: Value(id),
      designation: Value(designation),
      description: Value(description),
      createdAt: Value(createdAt),
      version: Value(version),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory RoleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoleData(
      id: serializer.fromJson<int>(json['id']),
      designation: serializer.fromJson<String>(json['designation']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      userId: serializer.fromJson<int?>(json['userId']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'designation': serializer.toJson<String>(designation),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'userId': serializer.toJson<int?>(userId),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  RoleData copyWith(
          {int? id,
          String? designation,
          String? description,
          DateTime? createdAt,
          int? version,
          int? userId,
          String? cloudId}) =>
      RoleData(
        id: id ?? this.id,
        designation: designation ?? this.designation,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        userId: userId ?? this.userId,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('RoleData(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('userId: $userId, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, designation, description, createdAt, version, userId, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoleData &&
          other.id == this.id &&
          other.designation == this.designation &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.userId == this.userId &&
          other.cloudId == this.cloudId);
}

class RoleCompanion extends UpdateCompanion<RoleData> {
  final Value<int> id;
  final Value<String> designation;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<int?> userId;
  final Value<String?> cloudId;
  const RoleCompanion({
    this.id = const Value.absent(),
    this.designation = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.userId = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  RoleCompanion.insert({
    this.id = const Value.absent(),
    required String designation,
    required String description,
    required DateTime createdAt,
    required int version,
    this.userId = const Value.absent(),
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        description = Value(description),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<RoleData> custom({
    Expression<int>? id,
    Expression<String>? designation,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<int?>? userId,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (designation != null) 'designation': designation,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (userId != null) 'userId': userId,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  RoleCompanion copyWith(
      {Value<int>? id,
      Value<String>? designation,
      Value<String>? description,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<int?>? userId,
      Value<String?>? cloudId}) {
    return RoleCompanion(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      userId: userId ?? this.userId,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoleCompanion(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('userId: $userId, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $RoleTable extends Role with TableInfo<$RoleTable, RoleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoleTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, designation, description, createdAt, version, userId, cloudId];
  @override
  String get aliasedName => _alias ?? 'role';
  @override
  String get actualTableName => 'role';
  @override
  VerificationContext validateIntegrity(Insertable<RoleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RoleData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RoleTable createAlias(String alias) {
    return $RoleTable(attachedDatabase, alias);
  }
}

class PermissionData extends DataClass implements Insertable<PermissionData> {
  final int id;
  final String designation;
  final String description;
  final int? roleId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  PermissionData(
      {required this.id,
      required this.designation,
      required this.description,
      this.roleId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory PermissionData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PermissionData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      roleId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}roleId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['designation'] = Variable<String>(designation);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || roleId != null) {
      map['roleId'] = Variable<int?>(roleId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  PermissionCompanion toCompanion(bool nullToAbsent) {
    return PermissionCompanion(
      id: Value(id),
      designation: Value(designation),
      description: Value(description),
      roleId:
          roleId == null && nullToAbsent ? const Value.absent() : Value(roleId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory PermissionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PermissionData(
      id: serializer.fromJson<int>(json['id']),
      designation: serializer.fromJson<String>(json['designation']),
      description: serializer.fromJson<String>(json['description']),
      roleId: serializer.fromJson<int?>(json['roleId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'designation': serializer.toJson<String>(designation),
      'description': serializer.toJson<String>(description),
      'roleId': serializer.toJson<int?>(roleId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  PermissionData copyWith(
          {int? id,
          String? designation,
          String? description,
          int? roleId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      PermissionData(
        id: id ?? this.id,
        designation: designation ?? this.designation,
        description: description ?? this.description,
        roleId: roleId ?? this.roleId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('PermissionData(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('roleId: $roleId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, designation, description, roleId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PermissionData &&
          other.id == this.id &&
          other.designation == this.designation &&
          other.description == this.description &&
          other.roleId == this.roleId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class PermissionCompanion extends UpdateCompanion<PermissionData> {
  final Value<int> id;
  final Value<String> designation;
  final Value<String> description;
  final Value<int?> roleId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const PermissionCompanion({
    this.id = const Value.absent(),
    this.designation = const Value.absent(),
    this.description = const Value.absent(),
    this.roleId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  PermissionCompanion.insert({
    this.id = const Value.absent(),
    required String designation,
    required String description,
    this.roleId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        description = Value(description),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<PermissionData> custom({
    Expression<int>? id,
    Expression<String>? designation,
    Expression<String>? description,
    Expression<int?>? roleId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (designation != null) 'designation': designation,
      if (description != null) 'description': description,
      if (roleId != null) 'roleId': roleId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  PermissionCompanion copyWith(
      {Value<int>? id,
      Value<String>? designation,
      Value<String>? description,
      Value<int?>? roleId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return PermissionCompanion(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      description: description ?? this.description,
      roleId: roleId ?? this.roleId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (roleId.present) {
      map['roleId'] = Variable<int?>(roleId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PermissionCompanion(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('roleId: $roleId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $PermissionTable extends Permission
    with TableInfo<$PermissionTable, PermissionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PermissionTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _roleIdMeta = const VerificationMeta('roleId');
  @override
  late final GeneratedColumn<int?> roleId = GeneratedColumn<int?>(
      'roleId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES role (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, designation, description, roleId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'permission';
  @override
  String get actualTableName => 'permission';
  @override
  VerificationContext validateIntegrity(Insertable<PermissionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('roleId')) {
      context.handle(_roleIdMeta,
          roleId.isAcceptableOrUnknown(data['roleId']!, _roleIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PermissionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PermissionData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PermissionTable createAlias(String alias) {
    return $PermissionTable(attachedDatabase, alias);
  }
}

class ExpenseData extends DataClass implements Insertable<ExpenseData> {
  final int id;
  final String designation;
  final String description;
  final String code;
  final String nlnvoice;
  final double amount;
  final int? employeeId;
  final int? fileId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  ExpenseData(
      {required this.id,
      required this.designation,
      required this.description,
      required this.code,
      required this.nlnvoice,
      required this.amount,
      this.employeeId,
      this.fileId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory ExpenseData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExpenseData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      nlnvoice: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nlnvoice'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      employeeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}employeeId']),
      fileId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}imageId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['designation'] = Variable<String>(designation);
    map['description'] = Variable<String>(description);
    map['code'] = Variable<String>(code);
    map['nlnvoice'] = Variable<String>(nlnvoice);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || employeeId != null) {
      map['employeeId'] = Variable<int?>(employeeId);
    }
    if (!nullToAbsent || fileId != null) {
      map['imageId'] = Variable<int?>(fileId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ExpenseCompanion toCompanion(bool nullToAbsent) {
    return ExpenseCompanion(
      id: Value(id),
      designation: Value(designation),
      description: Value(description),
      code: Value(code),
      nlnvoice: Value(nlnvoice),
      amount: Value(amount),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      fileId:
          fileId == null && nullToAbsent ? const Value.absent() : Value(fileId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory ExpenseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpenseData(
      id: serializer.fromJson<int>(json['id']),
      designation: serializer.fromJson<String>(json['designation']),
      description: serializer.fromJson<String>(json['description']),
      code: serializer.fromJson<String>(json['code']),
      nlnvoice: serializer.fromJson<String>(json['nlnvoice']),
      amount: serializer.fromJson<double>(json['amount']),
      employeeId: serializer.fromJson<int?>(json['employeeId']),
      fileId: serializer.fromJson<int?>(json['fileId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'designation': serializer.toJson<String>(designation),
      'description': serializer.toJson<String>(description),
      'code': serializer.toJson<String>(code),
      'nlnvoice': serializer.toJson<String>(nlnvoice),
      'amount': serializer.toJson<double>(amount),
      'employeeId': serializer.toJson<int?>(employeeId),
      'fileId': serializer.toJson<int?>(fileId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  ExpenseData copyWith(
          {int? id,
          String? designation,
          String? description,
          String? code,
          String? nlnvoice,
          double? amount,
          int? employeeId,
          int? fileId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      ExpenseData(
        id: id ?? this.id,
        designation: designation ?? this.designation,
        description: description ?? this.description,
        code: code ?? this.code,
        nlnvoice: nlnvoice ?? this.nlnvoice,
        amount: amount ?? this.amount,
        employeeId: employeeId ?? this.employeeId,
        fileId: fileId ?? this.fileId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('ExpenseData(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('code: $code, ')
          ..write('nlnvoice: $nlnvoice, ')
          ..write('amount: $amount, ')
          ..write('employeeId: $employeeId, ')
          ..write('fileId: $fileId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, designation, description, code, nlnvoice,
      amount, employeeId, fileId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpenseData &&
          other.id == this.id &&
          other.designation == this.designation &&
          other.description == this.description &&
          other.code == this.code &&
          other.nlnvoice == this.nlnvoice &&
          other.amount == this.amount &&
          other.employeeId == this.employeeId &&
          other.fileId == this.fileId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ExpenseCompanion extends UpdateCompanion<ExpenseData> {
  final Value<int> id;
  final Value<String> designation;
  final Value<String> description;
  final Value<String> code;
  final Value<String> nlnvoice;
  final Value<double> amount;
  final Value<int?> employeeId;
  final Value<int?> fileId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const ExpenseCompanion({
    this.id = const Value.absent(),
    this.designation = const Value.absent(),
    this.description = const Value.absent(),
    this.code = const Value.absent(),
    this.nlnvoice = const Value.absent(),
    this.amount = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.fileId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ExpenseCompanion.insert({
    this.id = const Value.absent(),
    required String designation,
    required String description,
    required String code,
    required String nlnvoice,
    required double amount,
    this.employeeId = const Value.absent(),
    this.fileId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        description = Value(description),
        code = Value(code),
        nlnvoice = Value(nlnvoice),
        amount = Value(amount),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<ExpenseData> custom({
    Expression<int>? id,
    Expression<String>? designation,
    Expression<String>? description,
    Expression<String>? code,
    Expression<String>? nlnvoice,
    Expression<double>? amount,
    Expression<int?>? employeeId,
    Expression<int?>? fileId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (designation != null) 'designation': designation,
      if (description != null) 'description': description,
      if (code != null) 'code': code,
      if (nlnvoice != null) 'nlnvoice': nlnvoice,
      if (amount != null) 'amount': amount,
      if (employeeId != null) 'employeeId': employeeId,
      if (fileId != null) 'imageId': fileId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ExpenseCompanion copyWith(
      {Value<int>? id,
      Value<String>? designation,
      Value<String>? description,
      Value<String>? code,
      Value<String>? nlnvoice,
      Value<double>? amount,
      Value<int?>? employeeId,
      Value<int?>? fileId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ExpenseCompanion(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      description: description ?? this.description,
      code: code ?? this.code,
      nlnvoice: nlnvoice ?? this.nlnvoice,
      amount: amount ?? this.amount,
      employeeId: employeeId ?? this.employeeId,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (nlnvoice.present) {
      map['nlnvoice'] = Variable<String>(nlnvoice.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (employeeId.present) {
      map['employeeId'] = Variable<int?>(employeeId.value);
    }
    if (fileId.present) {
      map['imageId'] = Variable<int?>(fileId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseCompanion(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('description: $description, ')
          ..write('code: $code, ')
          ..write('nlnvoice: $nlnvoice, ')
          ..write('amount: $amount, ')
          ..write('employeeId: $employeeId, ')
          ..write('fileId: $fileId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ExpenseTable extends Expense with TableInfo<$ExpenseTable, ExpenseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpenseTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nlnvoiceMeta = const VerificationMeta('nlnvoice');
  @override
  late final GeneratedColumn<String?> nlnvoice = GeneratedColumn<String?>(
      'nlnvoice', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _employeeIdMeta = const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int?> employeeId = GeneratedColumn<int?>(
      'employeeId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES employee (id)');
  final VerificationMeta _fileIdMeta = const VerificationMeta('fileId');
  @override
  late final GeneratedColumn<int?> fileId = GeneratedColumn<int?>(
      'imageId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES file_enterprise (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        designation,
        description,
        code,
        nlnvoice,
        amount,
        employeeId,
        fileId,
        createdAt,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'expense';
  @override
  String get actualTableName => 'expense';
  @override
  VerificationContext validateIntegrity(Insertable<ExpenseData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('nlnvoice')) {
      context.handle(_nlnvoiceMeta,
          nlnvoice.isAcceptableOrUnknown(data['nlnvoice']!, _nlnvoiceMeta));
    } else if (isInserting) {
      context.missing(_nlnvoiceMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('employeeId')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employeeId']!, _employeeIdMeta));
    }
    if (data.containsKey('imageId')) {
      context.handle(_fileIdMeta,
          fileId.isAcceptableOrUnknown(data['imageId']!, _fileIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpenseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExpenseData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExpenseTable createAlias(String alias) {
    return $ExpenseTable(attachedDatabase, alias);
  }
}

class CustomerData extends DataClass implements Insertable<CustomerData> {
  final int id;
  final int code;
  final int? userId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  CustomerData(
      {required this.id,
      required this.code,
      this.userId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory CustomerData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CustomerData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      code: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['code'] = Variable<int>(code);
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  CustomerCompanion toCompanion(bool nullToAbsent) {
    return CustomerCompanion(
      id: Value(id),
      code: Value(code),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory CustomerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerData(
      id: serializer.fromJson<int>(json['id']),
      code: serializer.fromJson<int>(json['code']),
      userId: serializer.fromJson<int?>(json['userId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'code': serializer.toJson<int>(code),
      'userId': serializer.toJson<int?>(userId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  CustomerData copyWith(
          {int? id,
          int? code,
          int? userId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      CustomerData(
        id: id ?? this.id,
        code: code ?? this.code,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('CustomerData(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, code, userId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerData &&
          other.id == this.id &&
          other.code == this.code &&
          other.userId == this.userId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class CustomerCompanion extends UpdateCompanion<CustomerData> {
  final Value<int> id;
  final Value<int> code;
  final Value<int?> userId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const CustomerCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.userId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  CustomerCompanion.insert({
    this.id = const Value.absent(),
    required int code,
    this.userId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : code = Value(code),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<CustomerData> custom({
    Expression<int>? id,
    Expression<int>? code,
    Expression<int?>? userId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (userId != null) 'userId': userId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  CustomerCompanion copyWith(
      {Value<int>? id,
      Value<int>? code,
      Value<int?>? userId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return CustomerCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<int>(code.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $CustomerTable extends Customer
    with TableInfo<$CustomerTable, CustomerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<int?> code = GeneratedColumn<int?>(
      'code', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, code, userId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'customer';
  @override
  String get actualTableName => 'customer';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CustomerData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CustomerTable createAlias(String alias) {
    return $CustomerTable(attachedDatabase, alias);
  }
}

class FidelityData extends DataClass implements Insertable<FidelityData> {
  final int id;
  final double amount;
  final int? customerId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  FidelityData(
      {required this.id,
      required this.amount,
      this.customerId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory FidelityData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FidelityData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      customerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customerId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || customerId != null) {
      map['customerId'] = Variable<int?>(customerId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  FidelityCompanion toCompanion(bool nullToAbsent) {
    return FidelityCompanion(
      id: Value(id),
      amount: Value(amount),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory FidelityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FidelityData(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      customerId: serializer.fromJson<int?>(json['customerId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<double>(amount),
      'customerId': serializer.toJson<int?>(customerId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  FidelityData copyWith(
          {int? id,
          double? amount,
          int? customerId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      FidelityData(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        customerId: customerId ?? this.customerId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('FidelityData(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('customerId: $customerId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, amount, customerId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FidelityData &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.customerId == this.customerId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class FidelityCompanion extends UpdateCompanion<FidelityData> {
  final Value<int> id;
  final Value<double> amount;
  final Value<int?> customerId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const FidelityCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.customerId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  FidelityCompanion.insert({
    this.id = const Value.absent(),
    required double amount,
    this.customerId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : amount = Value(amount),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<FidelityData> custom({
    Expression<int>? id,
    Expression<double>? amount,
    Expression<int?>? customerId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (customerId != null) 'customerId': customerId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  FidelityCompanion copyWith(
      {Value<int>? id,
      Value<double>? amount,
      Value<int?>? customerId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return FidelityCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      customerId: customerId ?? this.customerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (customerId.present) {
      map['customerId'] = Variable<int?>(customerId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FidelityCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('customerId: $customerId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $FidelityTable extends Fidelity
    with TableInfo<$FidelityTable, FidelityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FidelityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<int?> customerId = GeneratedColumn<int?>(
      'customerId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES customer (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, amount, customerId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'fidelity';
  @override
  String get actualTableName => 'fidelity';
  @override
  VerificationContext validateIntegrity(Insertable<FidelityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('customerId')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customerId']!, _customerIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FidelityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FidelityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FidelityTable createAlias(String alias) {
    return $FidelityTable(attachedDatabase, alias);
  }
}

class SupplierData extends DataClass implements Insertable<SupplierData> {
  final int id;
  final String designation;
  final String code;
  final int? userId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  SupplierData(
      {required this.id,
      required this.designation,
      required this.code,
      this.userId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory SupplierData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SupplierData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['designation'] = Variable<String>(designation);
    map['code'] = Variable<String>(code);
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  SupplierCompanion toCompanion(bool nullToAbsent) {
    return SupplierCompanion(
      id: Value(id),
      designation: Value(designation),
      code: Value(code),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory SupplierData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupplierData(
      id: serializer.fromJson<int>(json['id']),
      designation: serializer.fromJson<String>(json['designation']),
      code: serializer.fromJson<String>(json['code']),
      userId: serializer.fromJson<int?>(json['userId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'designation': serializer.toJson<String>(designation),
      'code': serializer.toJson<String>(code),
      'userId': serializer.toJson<int?>(userId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  SupplierData copyWith(
          {int? id,
          String? designation,
          String? code,
          int? userId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      SupplierData(
        id: id ?? this.id,
        designation: designation ?? this.designation,
        code: code ?? this.code,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('SupplierData(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('code: $code, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, designation, code, userId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupplierData &&
          other.id == this.id &&
          other.designation == this.designation &&
          other.code == this.code &&
          other.userId == this.userId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class SupplierCompanion extends UpdateCompanion<SupplierData> {
  final Value<int> id;
  final Value<String> designation;
  final Value<String> code;
  final Value<int?> userId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const SupplierCompanion({
    this.id = const Value.absent(),
    this.designation = const Value.absent(),
    this.code = const Value.absent(),
    this.userId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  SupplierCompanion.insert({
    this.id = const Value.absent(),
    required String designation,
    required String code,
    this.userId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        code = Value(code),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<SupplierData> custom({
    Expression<int>? id,
    Expression<String>? designation,
    Expression<String>? code,
    Expression<int?>? userId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (designation != null) 'designation': designation,
      if (code != null) 'code': code,
      if (userId != null) 'userId': userId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  SupplierCompanion copyWith(
      {Value<int>? id,
      Value<String>? designation,
      Value<String>? code,
      Value<int?>? userId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return SupplierCompanion(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      code: code ?? this.code,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplierCompanion(')
          ..write('id: $id, ')
          ..write('designation: $designation, ')
          ..write('code: $code, ')
          ..write('userId: $userId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $SupplierTable extends Supplier
    with TableInfo<$SupplierTable, SupplierData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplierTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, designation, code, userId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'supplier';
  @override
  String get actualTableName => 'supplier';
  @override
  VerificationContext validateIntegrity(Insertable<SupplierData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplierData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SupplierData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SupplierTable createAlias(String alias) {
    return $SupplierTable(attachedDatabase, alias);
  }
}

class ProductData extends DataClass implements Insertable<ProductData> {
  final int id;
  final String? description;
  final String designation;
  final String? caracteristic;
  final String entrytype;
  final String? producttype;
  final DateTime createdAt;
  final double? quantity;
  final String unite;
  final int? enterpriseId;
  final int? supplierId;
  final int version;
  final String? cloudId;
  ProductData(
      {required this.id,
      this.description,
      required this.designation,
      this.caracteristic,
      required this.entrytype,
      this.producttype,
      required this.createdAt,
      this.quantity,
      required this.unite,
      this.enterpriseId,
      this.supplierId,
      required this.version,
      this.cloudId});
  factory ProductData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      designation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}designation'])!,
      caracteristic: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}caracteristic']),
      entrytype: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entrytype'])!,
      producttype: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}producttype']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      quantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      unite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unite'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      supplierId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}supplierId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    map['designation'] = Variable<String>(designation);
    if (!nullToAbsent || caracteristic != null) {
      map['caracteristic'] = Variable<String?>(caracteristic);
    }
    map['entrytype'] = Variable<String>(entrytype);
    if (!nullToAbsent || producttype != null) {
      map['producttype'] = Variable<String?>(producttype);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<double?>(quantity);
    }
    map['unite'] = Variable<String>(unite);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    if (!nullToAbsent || supplierId != null) {
      map['supplierId'] = Variable<int?>(supplierId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ProductCompanion toCompanion(bool nullToAbsent) {
    return ProductCompanion(
      id: Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      designation: Value(designation),
      caracteristic: caracteristic == null && nullToAbsent
          ? const Value.absent()
          : Value(caracteristic),
      entrytype: Value(entrytype),
      producttype: producttype == null && nullToAbsent
          ? const Value.absent()
          : Value(producttype),
      createdAt: Value(createdAt),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      unite: Value(unite),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      supplierId: supplierId == null && nullToAbsent
          ? const Value.absent()
          : Value(supplierId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory ProductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String?>(json['description']),
      designation: serializer.fromJson<String>(json['designation']),
      caracteristic: serializer.fromJson<String?>(json['caracteristic']),
      entrytype: serializer.fromJson<String>(json['entrytype']),
      producttype: serializer.fromJson<String?>(json['producttype']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      quantity: serializer.fromJson<double?>(json['quantity']),
      unite: serializer.fromJson<String>(json['unite']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      supplierId: serializer.fromJson<int?>(json['supplierId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String?>(description),
      'designation': serializer.toJson<String>(designation),
      'caracteristic': serializer.toJson<String?>(caracteristic),
      'entrytype': serializer.toJson<String>(entrytype),
      'producttype': serializer.toJson<String?>(producttype),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'quantity': serializer.toJson<double?>(quantity),
      'unite': serializer.toJson<String>(unite),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'supplierId': serializer.toJson<int?>(supplierId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  ProductData copyWith(
          {int? id,
          String? description,
          String? designation,
          String? caracteristic,
          String? entrytype,
          String? producttype,
          DateTime? createdAt,
          double? quantity,
          String? unite,
          int? enterpriseId,
          int? supplierId,
          int? version,
          String? cloudId}) =>
      ProductData(
        id: id ?? this.id,
        description: description ?? this.description,
        designation: designation ?? this.designation,
        caracteristic: caracteristic ?? this.caracteristic,
        entrytype: entrytype ?? this.entrytype,
        producttype: producttype ?? this.producttype,
        createdAt: createdAt ?? this.createdAt,
        quantity: quantity ?? this.quantity,
        unite: unite ?? this.unite,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        supplierId: supplierId ?? this.supplierId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('ProductData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('designation: $designation, ')
          ..write('caracteristic: $caracteristic, ')
          ..write('entrytype: $entrytype, ')
          ..write('producttype: $producttype, ')
          ..write('createdAt: $createdAt, ')
          ..write('quantity: $quantity, ')
          ..write('unite: $unite, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('supplierId: $supplierId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      description,
      designation,
      caracteristic,
      entrytype,
      producttype,
      createdAt,
      quantity,
      unite,
      enterpriseId,
      supplierId,
      version,
      cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductData &&
          other.id == this.id &&
          other.description == this.description &&
          other.designation == this.designation &&
          other.caracteristic == this.caracteristic &&
          other.entrytype == this.entrytype &&
          other.producttype == this.producttype &&
          other.createdAt == this.createdAt &&
          other.quantity == this.quantity &&
          other.unite == this.unite &&
          other.enterpriseId == this.enterpriseId &&
          other.supplierId == this.supplierId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ProductCompanion extends UpdateCompanion<ProductData> {
  final Value<int> id;
  final Value<String?> description;
  final Value<String> designation;
  final Value<String?> caracteristic;
  final Value<String> entrytype;
  final Value<String?> producttype;
  final Value<DateTime> createdAt;
  final Value<double?> quantity;
  final Value<String> unite;
  final Value<int?> enterpriseId;
  final Value<int?> supplierId;
  final Value<int> version;
  final Value<String?> cloudId;
  const ProductCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.designation = const Value.absent(),
    this.caracteristic = const Value.absent(),
    this.entrytype = const Value.absent(),
    this.producttype = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unite = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ProductCompanion.insert({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    required String designation,
    this.caracteristic = const Value.absent(),
    required String entrytype,
    this.producttype = const Value.absent(),
    required DateTime createdAt,
    this.quantity = const Value.absent(),
    required String unite,
    this.enterpriseId = const Value.absent(),
    this.supplierId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : designation = Value(designation),
        entrytype = Value(entrytype),
        createdAt = Value(createdAt),
        unite = Value(unite),
        version = Value(version);
  static Insertable<ProductData> custom({
    Expression<int>? id,
    Expression<String?>? description,
    Expression<String>? designation,
    Expression<String?>? caracteristic,
    Expression<String>? entrytype,
    Expression<String?>? producttype,
    Expression<DateTime>? createdAt,
    Expression<double?>? quantity,
    Expression<String>? unite,
    Expression<int?>? enterpriseId,
    Expression<int?>? supplierId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (designation != null) 'designation': designation,
      if (caracteristic != null) 'caracteristic': caracteristic,
      if (entrytype != null) 'entrytype': entrytype,
      if (producttype != null) 'producttype': producttype,
      if (createdAt != null) 'createdAt': createdAt,
      if (quantity != null) 'quantity': quantity,
      if (unite != null) 'unite': unite,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (supplierId != null) 'supplierId': supplierId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ProductCompanion copyWith(
      {Value<int>? id,
      Value<String?>? description,
      Value<String>? designation,
      Value<String?>? caracteristic,
      Value<String>? entrytype,
      Value<String?>? producttype,
      Value<DateTime>? createdAt,
      Value<double?>? quantity,
      Value<String>? unite,
      Value<int?>? enterpriseId,
      Value<int?>? supplierId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ProductCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      designation: designation ?? this.designation,
      caracteristic: caracteristic ?? this.caracteristic,
      entrytype: entrytype ?? this.entrytype,
      producttype: producttype ?? this.producttype,
      createdAt: createdAt ?? this.createdAt,
      quantity: quantity ?? this.quantity,
      unite: unite ?? this.unite,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      supplierId: supplierId ?? this.supplierId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (caracteristic.present) {
      map['caracteristic'] = Variable<String?>(caracteristic.value);
    }
    if (entrytype.present) {
      map['entrytype'] = Variable<String>(entrytype.value);
    }
    if (producttype.present) {
      map['producttype'] = Variable<String?>(producttype.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double?>(quantity.value);
    }
    if (unite.present) {
      map['unite'] = Variable<String>(unite.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (supplierId.present) {
      map['supplierId'] = Variable<int?>(supplierId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('designation: $designation, ')
          ..write('caracteristic: $caracteristic, ')
          ..write('entrytype: $entrytype, ')
          ..write('producttype: $producttype, ')
          ..write('createdAt: $createdAt, ')
          ..write('quantity: $quantity, ')
          ..write('unite: $unite, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('supplierId: $supplierId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ProductTable extends Product with TableInfo<$ProductTable, ProductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String?> designation = GeneratedColumn<String?>(
      'designation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _caracteristicMeta =
      const VerificationMeta('caracteristic');
  @override
  late final GeneratedColumn<String?> caracteristic = GeneratedColumn<String?>(
      'caracteristic', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _entrytypeMeta = const VerificationMeta('entrytype');
  @override
  late final GeneratedColumn<String?> entrytype = GeneratedColumn<String?>(
      'entrytype', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _producttypeMeta =
      const VerificationMeta('producttype');
  @override
  late final GeneratedColumn<String?> producttype = GeneratedColumn<String?>(
      'producttype', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double?> quantity = GeneratedColumn<double?>(
      'quantity', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _uniteMeta = const VerificationMeta('unite');
  @override
  late final GeneratedColumn<String?> unite = GeneratedColumn<String?>(
      'unite', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _supplierIdMeta = const VerificationMeta('supplierId');
  @override
  late final GeneratedColumn<int?> supplierId = GeneratedColumn<int?>(
      'supplierId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES supplier (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        description,
        designation,
        caracteristic,
        entrytype,
        producttype,
        createdAt,
        quantity,
        unite,
        enterpriseId,
        supplierId,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'product';
  @override
  String get actualTableName => 'product';
  @override
  VerificationContext validateIntegrity(Insertable<ProductData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    } else if (isInserting) {
      context.missing(_designationMeta);
    }
    if (data.containsKey('caracteristic')) {
      context.handle(
          _caracteristicMeta,
          caracteristic.isAcceptableOrUnknown(
              data['caracteristic']!, _caracteristicMeta));
    }
    if (data.containsKey('entrytype')) {
      context.handle(_entrytypeMeta,
          entrytype.isAcceptableOrUnknown(data['entrytype']!, _entrytypeMeta));
    } else if (isInserting) {
      context.missing(_entrytypeMeta);
    }
    if (data.containsKey('producttype')) {
      context.handle(
          _producttypeMeta,
          producttype.isAcceptableOrUnknown(
              data['producttype']!, _producttypeMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('unite')) {
      context.handle(
          _uniteMeta, unite.isAcceptableOrUnknown(data['unite']!, _uniteMeta));
    } else if (isInserting) {
      context.missing(_uniteMeta);
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('supplierId')) {
      context.handle(
          _supplierIdMeta,
          supplierId.isAcceptableOrUnknown(
              data['supplierId']!, _supplierIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductTable createAlias(String alias) {
    return $ProductTable(attachedDatabase, alias);
  }
}

class PriceData extends DataClass implements Insertable<PriceData> {
  final int id;
  final double? purchase;
  final double maximun;
  final double minimum;
  final DateTime createdAt;
  final int? productId;
  final int version;
  final String? cloudId;
  PriceData(
      {required this.id,
      this.purchase,
      required this.maximun,
      required this.minimum,
      required this.createdAt,
      this.productId,
      required this.version,
      this.cloudId});
  factory PriceData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PriceData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      purchase: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}purchase']),
      maximun: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}maximum'])!,
      minimum: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}minimum'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      productId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}productId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || purchase != null) {
      map['purchase'] = Variable<double?>(purchase);
    }
    map['maximum'] = Variable<double>(maximun);
    map['minimum'] = Variable<double>(minimum);
    map['createdAt'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || productId != null) {
      map['productId'] = Variable<int?>(productId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  PriceCompanion toCompanion(bool nullToAbsent) {
    return PriceCompanion(
      id: Value(id),
      purchase: purchase == null && nullToAbsent
          ? const Value.absent()
          : Value(purchase),
      maximun: Value(maximun),
      minimum: Value(minimum),
      createdAt: Value(createdAt),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory PriceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PriceData(
      id: serializer.fromJson<int>(json['id']),
      purchase: serializer.fromJson<double?>(json['purchase']),
      maximun: serializer.fromJson<double>(json['maximun']),
      minimum: serializer.fromJson<double>(json['minimum']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      productId: serializer.fromJson<int?>(json['productId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'purchase': serializer.toJson<double?>(purchase),
      'maximun': serializer.toJson<double>(maximun),
      'minimum': serializer.toJson<double>(minimum),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'productId': serializer.toJson<int?>(productId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  PriceData copyWith(
          {int? id,
          double? purchase,
          double? maximun,
          double? minimum,
          DateTime? createdAt,
          int? productId,
          int? version,
          String? cloudId}) =>
      PriceData(
        id: id ?? this.id,
        purchase: purchase ?? this.purchase,
        maximun: maximun ?? this.maximun,
        minimum: minimum ?? this.minimum,
        createdAt: createdAt ?? this.createdAt,
        productId: productId ?? this.productId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('PriceData(')
          ..write('id: $id, ')
          ..write('purchase: $purchase, ')
          ..write('maximun: $maximun, ')
          ..write('minimum: $minimum, ')
          ..write('createdAt: $createdAt, ')
          ..write('productId: $productId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, purchase, maximun, minimum, createdAt, productId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PriceData &&
          other.id == this.id &&
          other.purchase == this.purchase &&
          other.maximun == this.maximun &&
          other.minimum == this.minimum &&
          other.createdAt == this.createdAt &&
          other.productId == this.productId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class PriceCompanion extends UpdateCompanion<PriceData> {
  final Value<int> id;
  final Value<double?> purchase;
  final Value<double> maximun;
  final Value<double> minimum;
  final Value<DateTime> createdAt;
  final Value<int?> productId;
  final Value<int> version;
  final Value<String?> cloudId;
  const PriceCompanion({
    this.id = const Value.absent(),
    this.purchase = const Value.absent(),
    this.maximun = const Value.absent(),
    this.minimum = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.productId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  PriceCompanion.insert({
    this.id = const Value.absent(),
    this.purchase = const Value.absent(),
    required double maximun,
    required double minimum,
    required DateTime createdAt,
    this.productId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : maximun = Value(maximun),
        minimum = Value(minimum),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<PriceData> custom({
    Expression<int>? id,
    Expression<double?>? purchase,
    Expression<double>? maximun,
    Expression<double>? minimum,
    Expression<DateTime>? createdAt,
    Expression<int?>? productId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (purchase != null) 'purchase': purchase,
      if (maximun != null) 'maximum': maximun,
      if (minimum != null) 'minimum': minimum,
      if (createdAt != null) 'createdAt': createdAt,
      if (productId != null) 'productId': productId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  PriceCompanion copyWith(
      {Value<int>? id,
      Value<double?>? purchase,
      Value<double>? maximun,
      Value<double>? minimum,
      Value<DateTime>? createdAt,
      Value<int?>? productId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return PriceCompanion(
      id: id ?? this.id,
      purchase: purchase ?? this.purchase,
      maximun: maximun ?? this.maximun,
      minimum: minimum ?? this.minimum,
      createdAt: createdAt ?? this.createdAt,
      productId: productId ?? this.productId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (purchase.present) {
      map['purchase'] = Variable<double?>(purchase.value);
    }
    if (maximun.present) {
      map['maximum'] = Variable<double>(maximun.value);
    }
    if (minimum.present) {
      map['minimum'] = Variable<double>(minimum.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (productId.present) {
      map['productId'] = Variable<int?>(productId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PriceCompanion(')
          ..write('id: $id, ')
          ..write('purchase: $purchase, ')
          ..write('maximun: $maximun, ')
          ..write('minimum: $minimum, ')
          ..write('createdAt: $createdAt, ')
          ..write('productId: $productId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $PriceTable extends Price with TableInfo<$PriceTable, PriceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PriceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _purchaseMeta = const VerificationMeta('purchase');
  @override
  late final GeneratedColumn<double?> purchase = GeneratedColumn<double?>(
      'purchase', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _maximunMeta = const VerificationMeta('maximun');
  @override
  late final GeneratedColumn<double?> maximun = GeneratedColumn<double?>(
      'maximum', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _minimumMeta = const VerificationMeta('minimum');
  @override
  late final GeneratedColumn<double?> minimum = GeneratedColumn<double?>(
      'minimum', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int?> productId = GeneratedColumn<int?>(
      'productId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES product (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, purchase, maximun, minimum, createdAt, productId, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'price';
  @override
  String get actualTableName => 'price';
  @override
  VerificationContext validateIntegrity(Insertable<PriceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('purchase')) {
      context.handle(_purchaseMeta,
          purchase.isAcceptableOrUnknown(data['purchase']!, _purchaseMeta));
    }
    if (data.containsKey('maximum')) {
      context.handle(_maximunMeta,
          maximun.isAcceptableOrUnknown(data['maximum']!, _maximunMeta));
    } else if (isInserting) {
      context.missing(_maximunMeta);
    }
    if (data.containsKey('minimum')) {
      context.handle(_minimumMeta,
          minimum.isAcceptableOrUnknown(data['minimum']!, _minimumMeta));
    } else if (isInserting) {
      context.missing(_minimumMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('productId')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['productId']!, _productIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PriceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PriceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PriceTable createAlias(String alias) {
    return $PriceTable(attachedDatabase, alias);
  }
}

class Productstatu extends DataClass implements Insertable<Productstatu> {
  final int id;
  final double quantity;
  final int? productId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  Productstatu(
      {required this.id,
      required this.quantity,
      this.productId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory Productstatu.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Productstatu(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      quantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity'])!,
      productId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}productId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['quantity'] = Variable<double>(quantity);
    if (!nullToAbsent || productId != null) {
      map['productId'] = Variable<int?>(productId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ProductstatusCompanion toCompanion(bool nullToAbsent) {
    return ProductstatusCompanion(
      id: Value(id),
      quantity: Value(quantity),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory Productstatu.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Productstatu(
      id: serializer.fromJson<int>(json['id']),
      quantity: serializer.fromJson<double>(json['quantity']),
      productId: serializer.fromJson<int?>(json['productId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'quantity': serializer.toJson<double>(quantity),
      'productId': serializer.toJson<int?>(productId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  Productstatu copyWith(
          {int? id,
          double? quantity,
          int? productId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      Productstatu(
        id: id ?? this.id,
        quantity: quantity ?? this.quantity,
        productId: productId ?? this.productId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('Productstatu(')
          ..write('id: $id, ')
          ..write('quantity: $quantity, ')
          ..write('productId: $productId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, quantity, productId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Productstatu &&
          other.id == this.id &&
          other.quantity == this.quantity &&
          other.productId == this.productId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ProductstatusCompanion extends UpdateCompanion<Productstatu> {
  final Value<int> id;
  final Value<double> quantity;
  final Value<int?> productId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const ProductstatusCompanion({
    this.id = const Value.absent(),
    this.quantity = const Value.absent(),
    this.productId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ProductstatusCompanion.insert({
    this.id = const Value.absent(),
    required double quantity,
    this.productId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : quantity = Value(quantity),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<Productstatu> custom({
    Expression<int>? id,
    Expression<double>? quantity,
    Expression<int?>? productId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (quantity != null) 'quantity': quantity,
      if (productId != null) 'productId': productId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ProductstatusCompanion copyWith(
      {Value<int>? id,
      Value<double>? quantity,
      Value<int?>? productId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ProductstatusCompanion(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      productId: productId ?? this.productId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (productId.present) {
      map['productId'] = Variable<int?>(productId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductstatusCompanion(')
          ..write('id: $id, ')
          ..write('quantity: $quantity, ')
          ..write('productId: $productId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ProductstatusTable extends Productstatus
    with TableInfo<$ProductstatusTable, Productstatu> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductstatusTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double?> quantity = GeneratedColumn<double?>(
      'quantity', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int?> productId = GeneratedColumn<int?>(
      'productId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES product (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, quantity, productId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'productstatus';
  @override
  String get actualTableName => 'productstatus';
  @override
  VerificationContext validateIntegrity(Insertable<Productstatu> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('productId')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['productId']!, _productIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Productstatu map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Productstatu.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductstatusTable createAlias(String alias) {
    return $ProductstatusTable(attachedDatabase, alias);
  }
}

class CardData extends DataClass implements Insertable<CardData> {
  final int id;
  final String description;
  final int? enterpriseId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  CardData(
      {required this.id,
      required this.description,
      this.enterpriseId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory CardData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CardData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}card'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['card'] = Variable<String>(description);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  CardCompanion toCompanion(bool nullToAbsent) {
    return CardCompanion(
      id: Value(id),
      description: Value(description),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory CardData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  CardData copyWith(
          {int? id,
          String? description,
          int? enterpriseId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      CardData(
        id: id ?? this.id,
        description: description ?? this.description,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('CardData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, description, enterpriseId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardData &&
          other.id == this.id &&
          other.description == this.description &&
          other.enterpriseId == this.enterpriseId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class CardCompanion extends UpdateCompanion<CardData> {
  final Value<int> id;
  final Value<String> description;
  final Value<int?> enterpriseId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const CardCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  CardCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    this.enterpriseId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : description = Value(description),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<CardData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<int?>? enterpriseId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'card': description,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  CardCompanion copyWith(
      {Value<int>? id,
      Value<String>? description,
      Value<int?>? enterpriseId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return CardCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['card'] = Variable<String>(description.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $CardTable extends Card with TableInfo<$CardTable, CardData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'card', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, description, enterpriseId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'card';
  @override
  String get actualTableName => 'card';
  @override
  VerificationContext validateIntegrity(Insertable<CardData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('card')) {
      context.handle(_descriptionMeta,
          description.isAcceptableOrUnknown(data['card']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CardData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CardTable createAlias(String alias) {
    return $CardTable(attachedDatabase, alias);
  }
}

class ProductsoldData extends DataClass implements Insertable<ProductsoldData> {
  final int id;
  final double price;
  final double discount;
  final int quantity;
  final DateTime createdAt;
  final int? productId;
  final int? cardId;
  final int? enterpriseId;
  final int version;
  final String? cloudId;
  ProductsoldData(
      {required this.id,
      required this.price,
      required this.discount,
      required this.quantity,
      required this.createdAt,
      this.productId,
      this.cardId,
      this.enterpriseId,
      required this.version,
      this.cloudId});
  factory ProductsoldData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductsoldData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      price: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price'])!,
      discount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}discount'])!,
      quantity: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      productId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}productId']),
      cardId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cardId']),
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['price'] = Variable<double>(price);
    map['discount'] = Variable<double>(discount);
    map['quantity'] = Variable<int>(quantity);
    map['createdAt'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || productId != null) {
      map['productId'] = Variable<int?>(productId);
    }
    if (!nullToAbsent || cardId != null) {
      map['cardId'] = Variable<int?>(cardId);
    }
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ProductsoldCompanion toCompanion(bool nullToAbsent) {
    return ProductsoldCompanion(
      id: Value(id),
      price: Value(price),
      discount: Value(discount),
      quantity: Value(quantity),
      createdAt: Value(createdAt),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      cardId:
          cardId == null && nullToAbsent ? const Value.absent() : Value(cardId),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory ProductsoldData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsoldData(
      id: serializer.fromJson<int>(json['id']),
      price: serializer.fromJson<double>(json['price']),
      discount: serializer.fromJson<double>(json['discount']),
      quantity: serializer.fromJson<int>(json['quantity']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      productId: serializer.fromJson<int?>(json['productId']),
      cardId: serializer.fromJson<int?>(json['cardId']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'price': serializer.toJson<double>(price),
      'discount': serializer.toJson<double>(discount),
      'quantity': serializer.toJson<int>(quantity),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'productId': serializer.toJson<int?>(productId),
      'cardId': serializer.toJson<int?>(cardId),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  ProductsoldData copyWith(
          {int? id,
          double? price,
          double? discount,
          int? quantity,
          DateTime? createdAt,
          int? productId,
          int? cardId,
          int? enterpriseId,
          int? version,
          String? cloudId}) =>
      ProductsoldData(
        id: id ?? this.id,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        quantity: quantity ?? this.quantity,
        createdAt: createdAt ?? this.createdAt,
        productId: productId ?? this.productId,
        cardId: cardId ?? this.cardId,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('ProductsoldData(')
          ..write('id: $id, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt, ')
          ..write('productId: $productId, ')
          ..write('cardId: $cardId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, price, discount, quantity, createdAt,
      productId, cardId, enterpriseId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsoldData &&
          other.id == this.id &&
          other.price == this.price &&
          other.discount == this.discount &&
          other.quantity == this.quantity &&
          other.createdAt == this.createdAt &&
          other.productId == this.productId &&
          other.cardId == this.cardId &&
          other.enterpriseId == this.enterpriseId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ProductsoldCompanion extends UpdateCompanion<ProductsoldData> {
  final Value<int> id;
  final Value<double> price;
  final Value<double> discount;
  final Value<int> quantity;
  final Value<DateTime> createdAt;
  final Value<int?> productId;
  final Value<int?> cardId;
  final Value<int?> enterpriseId;
  final Value<int> version;
  final Value<String?> cloudId;
  const ProductsoldCompanion({
    this.id = const Value.absent(),
    this.price = const Value.absent(),
    this.discount = const Value.absent(),
    this.quantity = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.productId = const Value.absent(),
    this.cardId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ProductsoldCompanion.insert({
    this.id = const Value.absent(),
    required double price,
    required double discount,
    required int quantity,
    required DateTime createdAt,
    this.productId = const Value.absent(),
    this.cardId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : price = Value(price),
        discount = Value(discount),
        quantity = Value(quantity),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<ProductsoldData> custom({
    Expression<int>? id,
    Expression<double>? price,
    Expression<double>? discount,
    Expression<int>? quantity,
    Expression<DateTime>? createdAt,
    Expression<int?>? productId,
    Expression<int?>? cardId,
    Expression<int?>? enterpriseId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (price != null) 'price': price,
      if (discount != null) 'discount': discount,
      if (quantity != null) 'quantity': quantity,
      if (createdAt != null) 'createdAt': createdAt,
      if (productId != null) 'productId': productId,
      if (cardId != null) 'cardId': cardId,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ProductsoldCompanion copyWith(
      {Value<int>? id,
      Value<double>? price,
      Value<double>? discount,
      Value<int>? quantity,
      Value<DateTime>? createdAt,
      Value<int?>? productId,
      Value<int?>? cardId,
      Value<int?>? enterpriseId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ProductsoldCompanion(
      id: id ?? this.id,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      productId: productId ?? this.productId,
      cardId: cardId ?? this.cardId,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (productId.present) {
      map['productId'] = Variable<int?>(productId.value);
    }
    if (cardId.present) {
      map['cardId'] = Variable<int?>(cardId.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsoldCompanion(')
          ..write('id: $id, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('quantity: $quantity, ')
          ..write('createdAt: $createdAt, ')
          ..write('productId: $productId, ')
          ..write('cardId: $cardId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ProductsoldTable extends Productsold
    with TableInfo<$ProductsoldTable, ProductsoldData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsoldTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double?> price = GeneratedColumn<double?>(
      'price', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _discountMeta = const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double?> discount = GeneratedColumn<double?>(
      'discount', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int?> quantity = GeneratedColumn<int?>(
      'quantity', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int?> productId = GeneratedColumn<int?>(
      'productId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES product (id)');
  final VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<int?> cardId = GeneratedColumn<int?>(
      'cardId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES card (id)');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        price,
        discount,
        quantity,
        createdAt,
        productId,
        cardId,
        enterpriseId,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'productsold';
  @override
  String get actualTableName => 'productsold';
  @override
  VerificationContext validateIntegrity(Insertable<ProductsoldData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('productId')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['productId']!, _productIdMeta));
    }
    if (data.containsKey('cardId')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['cardId']!, _cardIdMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductsoldData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductsoldData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsoldTable createAlias(String alias) {
    return $ProductsoldTable(attachedDatabase, alias);
  }
}

class SellData extends DataClass implements Insertable<SellData> {
  final int id;
  final double amount;
  final double rest;
  final DateTime createdAt;
  final int? enterpriseId;
  final int? userId;
  final int? cardId;
  final int version;
  final String? cloudId;
  SellData(
      {required this.id,
      required this.amount,
      required this.rest,
      required this.createdAt,
      this.enterpriseId,
      this.userId,
      this.cardId,
      required this.version,
      this.cloudId});
  factory SellData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SellData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      rest: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rest'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId']),
      cardId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cardId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amount'] = Variable<double>(amount);
    map['rest'] = Variable<double>(rest);
    map['createdAt'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    if (!nullToAbsent || userId != null) {
      map['userId'] = Variable<int?>(userId);
    }
    if (!nullToAbsent || cardId != null) {
      map['cardId'] = Variable<int?>(cardId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  SellCompanion toCompanion(bool nullToAbsent) {
    return SellCompanion(
      id: Value(id),
      amount: Value(amount),
      rest: Value(rest),
      createdAt: Value(createdAt),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      cardId:
          cardId == null && nullToAbsent ? const Value.absent() : Value(cardId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory SellData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SellData(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      rest: serializer.fromJson<double>(json['rest']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      userId: serializer.fromJson<int?>(json['userId']),
      cardId: serializer.fromJson<int?>(json['cardId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<double>(amount),
      'rest': serializer.toJson<double>(rest),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'userId': serializer.toJson<int?>(userId),
      'cardId': serializer.toJson<int?>(cardId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  SellData copyWith(
          {int? id,
          double? amount,
          double? rest,
          DateTime? createdAt,
          int? enterpriseId,
          int? userId,
          int? cardId,
          int? version,
          String? cloudId}) =>
      SellData(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        rest: rest ?? this.rest,
        createdAt: createdAt ?? this.createdAt,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        userId: userId ?? this.userId,
        cardId: cardId ?? this.cardId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('SellData(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('rest: $rest, ')
          ..write('createdAt: $createdAt, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('userId: $userId, ')
          ..write('cardId: $cardId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, rest, createdAt, enterpriseId,
      userId, cardId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SellData &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.rest == this.rest &&
          other.createdAt == this.createdAt &&
          other.enterpriseId == this.enterpriseId &&
          other.userId == this.userId &&
          other.cardId == this.cardId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class SellCompanion extends UpdateCompanion<SellData> {
  final Value<int> id;
  final Value<double> amount;
  final Value<double> rest;
  final Value<DateTime> createdAt;
  final Value<int?> enterpriseId;
  final Value<int?> userId;
  final Value<int?> cardId;
  final Value<int> version;
  final Value<String?> cloudId;
  const SellCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.rest = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.userId = const Value.absent(),
    this.cardId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  SellCompanion.insert({
    this.id = const Value.absent(),
    required double amount,
    required double rest,
    required DateTime createdAt,
    this.enterpriseId = const Value.absent(),
    this.userId = const Value.absent(),
    this.cardId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : amount = Value(amount),
        rest = Value(rest),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<SellData> custom({
    Expression<int>? id,
    Expression<double>? amount,
    Expression<double>? rest,
    Expression<DateTime>? createdAt,
    Expression<int?>? enterpriseId,
    Expression<int?>? userId,
    Expression<int?>? cardId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (rest != null) 'rest': rest,
      if (createdAt != null) 'createdAt': createdAt,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (userId != null) 'userId': userId,
      if (cardId != null) 'cardId': cardId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  SellCompanion copyWith(
      {Value<int>? id,
      Value<double>? amount,
      Value<double>? rest,
      Value<DateTime>? createdAt,
      Value<int?>? enterpriseId,
      Value<int?>? userId,
      Value<int?>? cardId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return SellCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      rest: rest ?? this.rest,
      createdAt: createdAt ?? this.createdAt,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      userId: userId ?? this.userId,
      cardId: cardId ?? this.cardId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (rest.present) {
      map['rest'] = Variable<double>(rest.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int?>(userId.value);
    }
    if (cardId.present) {
      map['cardId'] = Variable<int?>(cardId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SellCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('rest: $rest, ')
          ..write('createdAt: $createdAt, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('userId: $userId, ')
          ..write('cardId: $cardId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $SellTable extends Sell with TableInfo<$SellTable, SellData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SellTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _restMeta = const VerificationMeta('rest');
  @override
  late final GeneratedColumn<double?> rest = GeneratedColumn<double?>(
      'rest', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES user (id)');
  final VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<int?> cardId = GeneratedColumn<int?>(
      'cardId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES card (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        amount,
        rest,
        createdAt,
        enterpriseId,
        userId,
        cardId,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'sell';
  @override
  String get actualTableName => 'sell';
  @override
  VerificationContext validateIntegrity(Insertable<SellData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('rest')) {
      context.handle(
          _restMeta, rest.isAcceptableOrUnknown(data['rest']!, _restMeta));
    } else if (isInserting) {
      context.missing(_restMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('cardId')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['cardId']!, _cardIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SellData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SellData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SellTable createAlias(String alias) {
    return $SellTable(attachedDatabase, alias);
  }
}

class QuoteData extends DataClass implements Insertable<QuoteData> {
  final int id;
  final String state;
  final String description;
  final DateTime createdAt;
  final String code;
  final int? cardId;
  final int? employeeId;
  final int? customerId;
  final int? fileId;
  final int? enterpriseId;
  final int version;
  final String? cloudId;
  QuoteData(
      {required this.id,
      required this.state,
      required this.description,
      required this.createdAt,
      required this.code,
      this.cardId,
      this.employeeId,
      this.customerId,
      this.fileId,
      this.enterpriseId,
      required this.version,
      this.cloudId});
  factory QuoteData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return QuoteData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}state'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      cardId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cardId']),
      employeeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}employeeId']),
      customerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customerId']),
      fileId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file']),
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['state'] = Variable<String>(state);
    map['description'] = Variable<String>(description);
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['code'] = Variable<String>(code);
    if (!nullToAbsent || cardId != null) {
      map['cardId'] = Variable<int?>(cardId);
    }
    if (!nullToAbsent || employeeId != null) {
      map['employeeId'] = Variable<int?>(employeeId);
    }
    if (!nullToAbsent || customerId != null) {
      map['customerId'] = Variable<int?>(customerId);
    }
    if (!nullToAbsent || fileId != null) {
      map['file'] = Variable<int?>(fileId);
    }
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  QuoteCompanion toCompanion(bool nullToAbsent) {
    return QuoteCompanion(
      id: Value(id),
      state: Value(state),
      description: Value(description),
      createdAt: Value(createdAt),
      code: Value(code),
      cardId:
          cardId == null && nullToAbsent ? const Value.absent() : Value(cardId),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      fileId:
          fileId == null && nullToAbsent ? const Value.absent() : Value(fileId),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory QuoteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuoteData(
      id: serializer.fromJson<int>(json['id']),
      state: serializer.fromJson<String>(json['state']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      code: serializer.fromJson<String>(json['code']),
      cardId: serializer.fromJson<int?>(json['cardId']),
      employeeId: serializer.fromJson<int?>(json['employeeId']),
      customerId: serializer.fromJson<int?>(json['customerId']),
      fileId: serializer.fromJson<int?>(json['fileId']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'state': serializer.toJson<String>(state),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'code': serializer.toJson<String>(code),
      'cardId': serializer.toJson<int?>(cardId),
      'employeeId': serializer.toJson<int?>(employeeId),
      'customerId': serializer.toJson<int?>(customerId),
      'fileId': serializer.toJson<int?>(fileId),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  QuoteData copyWith(
          {int? id,
          String? state,
          String? description,
          DateTime? createdAt,
          String? code,
          int? cardId,
          int? employeeId,
          int? customerId,
          int? fileId,
          int? enterpriseId,
          int? version,
          String? cloudId}) =>
      QuoteData(
        id: id ?? this.id,
        state: state ?? this.state,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        code: code ?? this.code,
        cardId: cardId ?? this.cardId,
        employeeId: employeeId ?? this.employeeId,
        customerId: customerId ?? this.customerId,
        fileId: fileId ?? this.fileId,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('QuoteData(')
          ..write('id: $id, ')
          ..write('state: $state, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('code: $code, ')
          ..write('cardId: $cardId, ')
          ..write('employeeId: $employeeId, ')
          ..write('customerId: $customerId, ')
          ..write('fileId: $fileId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, state, description, createdAt, code,
      cardId, employeeId, customerId, fileId, enterpriseId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuoteData &&
          other.id == this.id &&
          other.state == this.state &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.code == this.code &&
          other.cardId == this.cardId &&
          other.employeeId == this.employeeId &&
          other.customerId == this.customerId &&
          other.fileId == this.fileId &&
          other.enterpriseId == this.enterpriseId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class QuoteCompanion extends UpdateCompanion<QuoteData> {
  final Value<int> id;
  final Value<String> state;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<String> code;
  final Value<int?> cardId;
  final Value<int?> employeeId;
  final Value<int?> customerId;
  final Value<int?> fileId;
  final Value<int?> enterpriseId;
  final Value<int> version;
  final Value<String?> cloudId;
  const QuoteCompanion({
    this.id = const Value.absent(),
    this.state = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.code = const Value.absent(),
    this.cardId = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.customerId = const Value.absent(),
    this.fileId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  QuoteCompanion.insert({
    this.id = const Value.absent(),
    required String state,
    required String description,
    required DateTime createdAt,
    required String code,
    this.cardId = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.customerId = const Value.absent(),
    this.fileId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  })  : state = Value(state),
        description = Value(description),
        createdAt = Value(createdAt),
        code = Value(code),
        version = Value(version);
  static Insertable<QuoteData> custom({
    Expression<int>? id,
    Expression<String>? state,
    Expression<String>? description,
    Expression<DateTime>? createdAt,
    Expression<String>? code,
    Expression<int?>? cardId,
    Expression<int?>? employeeId,
    Expression<int?>? customerId,
    Expression<int?>? fileId,
    Expression<int?>? enterpriseId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (state != null) 'state': state,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt,
      if (code != null) 'code': code,
      if (cardId != null) 'cardId': cardId,
      if (employeeId != null) 'employeeId': employeeId,
      if (customerId != null) 'customerId': customerId,
      if (fileId != null) 'file': fileId,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  QuoteCompanion copyWith(
      {Value<int>? id,
      Value<String>? state,
      Value<String>? description,
      Value<DateTime>? createdAt,
      Value<String>? code,
      Value<int?>? cardId,
      Value<int?>? employeeId,
      Value<int?>? customerId,
      Value<int?>? fileId,
      Value<int?>? enterpriseId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return QuoteCompanion(
      id: id ?? this.id,
      state: state ?? this.state,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      code: code ?? this.code,
      cardId: cardId ?? this.cardId,
      employeeId: employeeId ?? this.employeeId,
      customerId: customerId ?? this.customerId,
      fileId: fileId ?? this.fileId,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (cardId.present) {
      map['cardId'] = Variable<int?>(cardId.value);
    }
    if (employeeId.present) {
      map['employeeId'] = Variable<int?>(employeeId.value);
    }
    if (customerId.present) {
      map['customerId'] = Variable<int?>(customerId.value);
    }
    if (fileId.present) {
      map['file'] = Variable<int?>(fileId.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuoteCompanion(')
          ..write('id: $id, ')
          ..write('state: $state, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('code: $code, ')
          ..write('cardId: $cardId, ')
          ..write('employeeId: $employeeId, ')
          ..write('customerId: $customerId, ')
          ..write('fileId: $fileId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $QuoteTable extends Quote with TableInfo<$QuoteTable, QuoteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuoteTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'state', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<int?> cardId = GeneratedColumn<int?>(
      'cardId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES card (id)');
  final VerificationMeta _employeeIdMeta = const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int?> employeeId = GeneratedColumn<int?>(
      'employeeId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES employee (id)');
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<int?> customerId = GeneratedColumn<int?>(
      'customerId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES customer (id)');
  final VerificationMeta _fileIdMeta = const VerificationMeta('fileId');
  @override
  late final GeneratedColumn<int?> fileId = GeneratedColumn<int?>(
      'file', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES file_enterprise (id)');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        state,
        description,
        createdAt,
        code,
        cardId,
        employeeId,
        customerId,
        fileId,
        enterpriseId,
        version,
        cloudId
      ];
  @override
  String get aliasedName => _alias ?? 'quote';
  @override
  String get actualTableName => 'quote';
  @override
  VerificationContext validateIntegrity(Insertable<QuoteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('cardId')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['cardId']!, _cardIdMeta));
    }
    if (data.containsKey('employeeId')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employeeId']!, _employeeIdMeta));
    }
    if (data.containsKey('customerId')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customerId']!, _customerIdMeta));
    }
    if (data.containsKey('file')) {
      context.handle(_fileIdMeta,
          fileId.isAcceptableOrUnknown(data['file']!, _fileIdMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuoteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return QuoteData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $QuoteTable createAlias(String alias) {
    return $QuoteTable(attachedDatabase, alias);
  }
}

class Quotestatu extends DataClass implements Insertable<Quotestatu> {
  final int id;
  final int? employeeId;
  final int? quoteId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  Quotestatu(
      {required this.id,
      this.employeeId,
      this.quoteId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory Quotestatu.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Quotestatu(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      employeeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}employeeId']),
      quoteId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quoteId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || employeeId != null) {
      map['employeeId'] = Variable<int?>(employeeId);
    }
    if (!nullToAbsent || quoteId != null) {
      map['quoteId'] = Variable<int?>(quoteId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  QuotestatusCompanion toCompanion(bool nullToAbsent) {
    return QuotestatusCompanion(
      id: Value(id),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      quoteId: quoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(quoteId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory Quotestatu.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Quotestatu(
      id: serializer.fromJson<int>(json['id']),
      employeeId: serializer.fromJson<int?>(json['employeeId']),
      quoteId: serializer.fromJson<int?>(json['quoteId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'employeeId': serializer.toJson<int?>(employeeId),
      'quoteId': serializer.toJson<int?>(quoteId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  Quotestatu copyWith(
          {int? id,
          int? employeeId,
          int? quoteId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      Quotestatu(
        id: id ?? this.id,
        employeeId: employeeId ?? this.employeeId,
        quoteId: quoteId ?? this.quoteId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('Quotestatu(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('quoteId: $quoteId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, employeeId, quoteId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Quotestatu &&
          other.id == this.id &&
          other.employeeId == this.employeeId &&
          other.quoteId == this.quoteId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class QuotestatusCompanion extends UpdateCompanion<Quotestatu> {
  final Value<int> id;
  final Value<int?> employeeId;
  final Value<int?> quoteId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const QuotestatusCompanion({
    this.id = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.quoteId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  QuotestatusCompanion.insert({
    this.id = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.quoteId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<Quotestatu> custom({
    Expression<int>? id,
    Expression<int?>? employeeId,
    Expression<int?>? quoteId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (employeeId != null) 'employeeId': employeeId,
      if (quoteId != null) 'quoteId': quoteId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  QuotestatusCompanion copyWith(
      {Value<int>? id,
      Value<int?>? employeeId,
      Value<int?>? quoteId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return QuotestatusCompanion(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      quoteId: quoteId ?? this.quoteId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (employeeId.present) {
      map['employeeId'] = Variable<int?>(employeeId.value);
    }
    if (quoteId.present) {
      map['quoteId'] = Variable<int?>(quoteId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuotestatusCompanion(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('quoteId: $quoteId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $QuotestatusTable extends Quotestatus
    with TableInfo<$QuotestatusTable, Quotestatu> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuotestatusTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _employeeIdMeta = const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int?> employeeId = GeneratedColumn<int?>(
      'employeeId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES employee (id)');
  final VerificationMeta _quoteIdMeta = const VerificationMeta('quoteId');
  @override
  late final GeneratedColumn<int?> quoteId = GeneratedColumn<int?>(
      'quoteId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES quote (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, employeeId, quoteId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'quotestatus';
  @override
  String get actualTableName => 'quotestatus';
  @override
  VerificationContext validateIntegrity(Insertable<Quotestatu> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('employeeId')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employeeId']!, _employeeIdMeta));
    }
    if (data.containsKey('quoteId')) {
      context.handle(_quoteIdMeta,
          quoteId.isAcceptableOrUnknown(data['quoteId']!, _quoteIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quotestatu map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Quotestatu.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $QuotestatusTable createAlias(String alias) {
    return $QuotestatusTable(attachedDatabase, alias);
  }
}

class CurrencyData extends DataClass implements Insertable<CurrencyData> {
  final int id;
  final String description;
  final String current;
  final int? enterpriseId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  CurrencyData(
      {required this.id,
      required this.description,
      required this.current,
      this.enterpriseId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory CurrencyData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CurrencyData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      current: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current'])!,
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    map['current'] = Variable<String>(current);
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  CurrencyCompanion toCompanion(bool nullToAbsent) {
    return CurrencyCompanion(
      id: Value(id),
      description: Value(description),
      current: Value(current),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory CurrencyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrencyData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      current: serializer.fromJson<String>(json['current']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'current': serializer.toJson<String>(current),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  CurrencyData copyWith(
          {int? id,
          String? description,
          String? current,
          int? enterpriseId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      CurrencyData(
        id: id ?? this.id,
        description: description ?? this.description,
        current: current ?? this.current,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('CurrencyData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('current: $current, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, description, current, enterpriseId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrencyData &&
          other.id == this.id &&
          other.description == this.description &&
          other.current == this.current &&
          other.enterpriseId == this.enterpriseId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class CurrencyCompanion extends UpdateCompanion<CurrencyData> {
  final Value<int> id;
  final Value<String> description;
  final Value<String> current;
  final Value<int?> enterpriseId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const CurrencyCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.current = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  CurrencyCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    required String current,
    this.enterpriseId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : description = Value(description),
        current = Value(current),
        createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<CurrencyData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<String>? current,
    Expression<int?>? enterpriseId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (current != null) 'current': current,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  CurrencyCompanion copyWith(
      {Value<int>? id,
      Value<String>? description,
      Value<String>? current,
      Value<int?>? enterpriseId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return CurrencyCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      current: current ?? this.current,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (current.present) {
      map['current'] = Variable<String>(current.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrencyCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('current: $current, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $CurrencyTable extends Currency
    with TableInfo<$CurrencyTable, CurrencyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrencyTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _currentMeta = const VerificationMeta('current');
  @override
  late final GeneratedColumn<String?> current = GeneratedColumn<String?>(
      'current', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, description, current, enterpriseId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'currency';
  @override
  String get actualTableName => 'currency';
  @override
  VerificationContext validateIntegrity(Insertable<CurrencyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('current')) {
      context.handle(_currentMeta,
          current.isAcceptableOrUnknown(data['current']!, _currentMeta));
    } else if (isInserting) {
      context.missing(_currentMeta);
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CurrencyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CurrencyData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CurrencyTable createAlias(String alias) {
    return $CurrencyTable(attachedDatabase, alias);
  }
}

class ProductphotoData extends DataClass
    implements Insertable<ProductphotoData> {
  final int id;
  final int? imageId;
  final int? productId;
  final int version;
  final String? cloudId;
  ProductphotoData(
      {required this.id,
      this.imageId,
      this.productId,
      required this.version,
      this.cloudId});
  factory ProductphotoData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductphotoData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      imageId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}imageId']),
      productId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}productId']),
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || imageId != null) {
      map['imageId'] = Variable<int?>(imageId);
    }
    if (!nullToAbsent || productId != null) {
      map['productId'] = Variable<int?>(productId);
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  ProductphotoCompanion toCompanion(bool nullToAbsent) {
    return ProductphotoCompanion(
      id: Value(id),
      imageId: imageId == null && nullToAbsent
          ? const Value.absent()
          : Value(imageId),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory ProductphotoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductphotoData(
      id: serializer.fromJson<int>(json['id']),
      imageId: serializer.fromJson<int?>(json['imageId']),
      productId: serializer.fromJson<int?>(json['productId']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imageId': serializer.toJson<int?>(imageId),
      'productId': serializer.toJson<int?>(productId),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  ProductphotoData copyWith(
          {int? id,
          int? imageId,
          int? productId,
          int? version,
          String? cloudId}) =>
      ProductphotoData(
        id: id ?? this.id,
        imageId: imageId ?? this.imageId,
        productId: productId ?? this.productId,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('ProductphotoData(')
          ..write('id: $id, ')
          ..write('imageId: $imageId, ')
          ..write('productId: $productId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, imageId, productId, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductphotoData &&
          other.id == this.id &&
          other.imageId == this.imageId &&
          other.productId == this.productId &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class ProductphotoCompanion extends UpdateCompanion<ProductphotoData> {
  final Value<int> id;
  final Value<int?> imageId;
  final Value<int?> productId;
  final Value<int> version;
  final Value<String?> cloudId;
  const ProductphotoCompanion({
    this.id = const Value.absent(),
    this.imageId = const Value.absent(),
    this.productId = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  ProductphotoCompanion.insert({
    this.id = const Value.absent(),
    this.imageId = const Value.absent(),
    this.productId = const Value.absent(),
    required int version,
    this.cloudId = const Value.absent(),
  }) : version = Value(version);
  static Insertable<ProductphotoData> custom({
    Expression<int>? id,
    Expression<int?>? imageId,
    Expression<int?>? productId,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imageId != null) 'imageId': imageId,
      if (productId != null) 'productId': productId,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  ProductphotoCompanion copyWith(
      {Value<int>? id,
      Value<int?>? imageId,
      Value<int?>? productId,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return ProductphotoCompanion(
      id: id ?? this.id,
      imageId: imageId ?? this.imageId,
      productId: productId ?? this.productId,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imageId.present) {
      map['imageId'] = Variable<int?>(imageId.value);
    }
    if (productId.present) {
      map['productId'] = Variable<int?>(productId.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductphotoCompanion(')
          ..write('id: $id, ')
          ..write('imageId: $imageId, ')
          ..write('productId: $productId, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $ProductphotoTable extends Productphoto
    with TableInfo<$ProductphotoTable, ProductphotoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductphotoTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _imageIdMeta = const VerificationMeta('imageId');
  @override
  late final GeneratedColumn<int?> imageId = GeneratedColumn<int?>(
      'imageId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES file_enterprise (id)');
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int?> productId = GeneratedColumn<int?>(
      'productId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES product (id)');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, imageId, productId, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'productphoto';
  @override
  String get actualTableName => 'productphoto';
  @override
  VerificationContext validateIntegrity(Insertable<ProductphotoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('imageId')) {
      context.handle(_imageIdMeta,
          imageId.isAcceptableOrUnknown(data['imageId']!, _imageIdMeta));
    }
    if (data.containsKey('productId')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['productId']!, _productIdMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductphotoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductphotoData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductphotoTable createAlias(String alias) {
    return $ProductphotoTable(attachedDatabase, alias);
  }
}

class SoldData extends DataClass implements Insertable<SoldData> {
  final int id;
  final int? customerId;
  final int? sellId;
  final DateTime createdAt;
  final int version;
  final String? cloudId;
  SoldData(
      {required this.id,
      this.customerId,
      this.sellId,
      required this.createdAt,
      required this.version,
      this.cloudId});
  factory SoldData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SoldData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      customerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customerId']),
      sellId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sellId']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}createdAt'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || customerId != null) {
      map['customerId'] = Variable<int?>(customerId);
    }
    if (!nullToAbsent || sellId != null) {
      map['sellId'] = Variable<int?>(sellId);
    }
    map['createdAt'] = Variable<DateTime>(createdAt);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  SoldCompanion toCompanion(bool nullToAbsent) {
    return SoldCompanion(
      id: Value(id),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      sellId:
          sellId == null && nullToAbsent ? const Value.absent() : Value(sellId),
      createdAt: Value(createdAt),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory SoldData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SoldData(
      id: serializer.fromJson<int>(json['id']),
      customerId: serializer.fromJson<int?>(json['customerId']),
      sellId: serializer.fromJson<int?>(json['sellId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'customerId': serializer.toJson<int?>(customerId),
      'sellId': serializer.toJson<int?>(sellId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  SoldData copyWith(
          {int? id,
          int? customerId,
          int? sellId,
          DateTime? createdAt,
          int? version,
          String? cloudId}) =>
      SoldData(
        id: id ?? this.id,
        customerId: customerId ?? this.customerId,
        sellId: sellId ?? this.sellId,
        createdAt: createdAt ?? this.createdAt,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('SoldData(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('sellId: $sellId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, customerId, sellId, createdAt, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SoldData &&
          other.id == this.id &&
          other.customerId == this.customerId &&
          other.sellId == this.sellId &&
          other.createdAt == this.createdAt &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class SoldCompanion extends UpdateCompanion<SoldData> {
  final Value<int> id;
  final Value<int?> customerId;
  final Value<int?> sellId;
  final Value<DateTime> createdAt;
  final Value<int> version;
  final Value<String?> cloudId;
  const SoldCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.sellId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  SoldCompanion.insert({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.sellId = const Value.absent(),
    required DateTime createdAt,
    required int version,
    this.cloudId = const Value.absent(),
  })  : createdAt = Value(createdAt),
        version = Value(version);
  static Insertable<SoldData> custom({
    Expression<int>? id,
    Expression<int?>? customerId,
    Expression<int?>? sellId,
    Expression<DateTime>? createdAt,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customerId != null) 'customerId': customerId,
      if (sellId != null) 'sellId': sellId,
      if (createdAt != null) 'createdAt': createdAt,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  SoldCompanion copyWith(
      {Value<int>? id,
      Value<int?>? customerId,
      Value<int?>? sellId,
      Value<DateTime>? createdAt,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return SoldCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      sellId: sellId ?? this.sellId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (customerId.present) {
      map['customerId'] = Variable<int?>(customerId.value);
    }
    if (sellId.present) {
      map['sellId'] = Variable<int?>(sellId.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<DateTime>(createdAt.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SoldCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('sellId: $sellId, ')
          ..write('createdAt: $createdAt, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $SoldTable extends Sold with TableInfo<$SoldTable, SoldData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SoldTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<int?> customerId = GeneratedColumn<int?>(
      'customerId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES customer (id)');
  final VerificationMeta _sellIdMeta = const VerificationMeta('sellId');
  @override
  late final GeneratedColumn<int?> sellId = GeneratedColumn<int?>(
      'sellId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES sell (id)');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'createdAt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, customerId, sellId, createdAt, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'sold';
  @override
  String get actualTableName => 'sold';
  @override
  VerificationContext validateIntegrity(Insertable<SoldData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('customerId')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customerId']!, _customerIdMeta));
    }
    if (data.containsKey('sellId')) {
      context.handle(_sellIdMeta,
          sellId.isAcceptableOrUnknown(data['sellId']!, _sellIdMeta));
    }
    if (data.containsKey('createdAt')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SoldData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SoldData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SoldTable createAlias(String alias) {
    return $SoldTable(attachedDatabase, alias);
  }
}

class Enterpriseaddres extends DataClass
    implements Insertable<Enterpriseaddres> {
  final int id;
  final int? addressId;
  final int? enterpriseId;
  final bool current;
  final int version;
  Enterpriseaddres(
      {required this.id,
      this.addressId,
      this.enterpriseId,
      required this.current,
      required this.version});
  factory Enterpriseaddres.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Enterpriseaddres(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      addressId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}addressId']),
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      current: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || addressId != null) {
      map['addressId'] = Variable<int?>(addressId);
    }
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['current'] = Variable<bool>(current);
    map['version'] = Variable<int>(version);
    return map;
  }

  EnterpriseaddressCompanion toCompanion(bool nullToAbsent) {
    return EnterpriseaddressCompanion(
      id: Value(id),
      addressId: addressId == null && nullToAbsent
          ? const Value.absent()
          : Value(addressId),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      current: Value(current),
      version: Value(version),
    );
  }

  factory Enterpriseaddres.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Enterpriseaddres(
      id: serializer.fromJson<int>(json['id']),
      addressId: serializer.fromJson<int?>(json['addressId']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      current: serializer.fromJson<bool>(json['current']),
      version: serializer.fromJson<int>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'addressId': serializer.toJson<int?>(addressId),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'current': serializer.toJson<bool>(current),
      'version': serializer.toJson<int>(version),
    };
  }

  Enterpriseaddres copyWith(
          {int? id,
          int? addressId,
          int? enterpriseId,
          bool? current,
          int? version}) =>
      Enterpriseaddres(
        id: id ?? this.id,
        addressId: addressId ?? this.addressId,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        current: current ?? this.current,
        version: version ?? this.version,
      );
  @override
  String toString() {
    return (StringBuffer('Enterpriseaddres(')
          ..write('id: $id, ')
          ..write('addressId: $addressId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('current: $current, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, addressId, enterpriseId, current, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Enterpriseaddres &&
          other.id == this.id &&
          other.addressId == this.addressId &&
          other.enterpriseId == this.enterpriseId &&
          other.current == this.current &&
          other.version == this.version);
}

class EnterpriseaddressCompanion extends UpdateCompanion<Enterpriseaddres> {
  final Value<int> id;
  final Value<int?> addressId;
  final Value<int?> enterpriseId;
  final Value<bool> current;
  final Value<int> version;
  const EnterpriseaddressCompanion({
    this.id = const Value.absent(),
    this.addressId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.current = const Value.absent(),
    this.version = const Value.absent(),
  });
  EnterpriseaddressCompanion.insert({
    this.id = const Value.absent(),
    this.addressId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    required bool current,
    required int version,
  })  : current = Value(current),
        version = Value(version);
  static Insertable<Enterpriseaddres> custom({
    Expression<int>? id,
    Expression<int?>? addressId,
    Expression<int?>? enterpriseId,
    Expression<bool>? current,
    Expression<int>? version,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (addressId != null) 'addressId': addressId,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (current != null) 'current': current,
      if (version != null) 'version': version,
    });
  }

  EnterpriseaddressCompanion copyWith(
      {Value<int>? id,
      Value<int?>? addressId,
      Value<int?>? enterpriseId,
      Value<bool>? current,
      Value<int>? version}) {
    return EnterpriseaddressCompanion(
      id: id ?? this.id,
      addressId: addressId ?? this.addressId,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      current: current ?? this.current,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (addressId.present) {
      map['addressId'] = Variable<int?>(addressId.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (current.present) {
      map['current'] = Variable<bool>(current.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnterpriseaddressCompanion(')
          ..write('id: $id, ')
          ..write('addressId: $addressId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('current: $current, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }
}

class $EnterpriseaddressTable extends Enterpriseaddress
    with TableInfo<$EnterpriseaddressTable, Enterpriseaddres> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EnterpriseaddressTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<int?> addressId = GeneratedColumn<int?>(
      'addressId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES address (id)');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _currentMeta = const VerificationMeta('current');
  @override
  late final GeneratedColumn<bool?> current = GeneratedColumn<bool?>(
      'current', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("current" IN (0, 1))');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, addressId, enterpriseId, current, version];
  @override
  String get aliasedName => _alias ?? 'enterpriseaddress';
  @override
  String get actualTableName => 'enterpriseaddress';
  @override
  VerificationContext validateIntegrity(Insertable<Enterpriseaddres> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('addressId')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['addressId']!, _addressIdMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('current')) {
      context.handle(_currentMeta,
          current.isAcceptableOrUnknown(data['current']!, _currentMeta));
    } else if (isInserting) {
      context.missing(_currentMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Enterpriseaddres map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Enterpriseaddres.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EnterpriseaddressTable createAlias(String alias) {
    return $EnterpriseaddressTable(attachedDatabase, alias);
  }
}

class EnterprisecontactData extends DataClass
    implements Insertable<EnterprisecontactData> {
  final int id;
  final int? contactId;
  final int? enterpriseId;
  final bool current;
  final int version;
  final String? cloudId;
  EnterprisecontactData(
      {required this.id,
      this.contactId,
      this.enterpriseId,
      required this.current,
      required this.version,
      this.cloudId});
  factory EnterprisecontactData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EnterprisecontactData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      contactId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}contactId']),
      enterpriseId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enterpriseId']),
      current: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current'])!,
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      cloudId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cloudId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || contactId != null) {
      map['contactId'] = Variable<int?>(contactId);
    }
    if (!nullToAbsent || enterpriseId != null) {
      map['enterpriseId'] = Variable<int?>(enterpriseId);
    }
    map['current'] = Variable<bool>(current);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || cloudId != null) {
      map['cloudId'] = Variable<String?>(cloudId);
    }
    return map;
  }

  EnterprisecontactCompanion toCompanion(bool nullToAbsent) {
    return EnterprisecontactCompanion(
      id: Value(id),
      contactId: contactId == null && nullToAbsent
          ? const Value.absent()
          : Value(contactId),
      enterpriseId: enterpriseId == null && nullToAbsent
          ? const Value.absent()
          : Value(enterpriseId),
      current: Value(current),
      version: Value(version),
      cloudId: cloudId == null && nullToAbsent
          ? const Value.absent()
          : Value(cloudId),
    );
  }

  factory EnterprisecontactData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EnterprisecontactData(
      id: serializer.fromJson<int>(json['id']),
      contactId: serializer.fromJson<int?>(json['contactId']),
      enterpriseId: serializer.fromJson<int?>(json['enterpriseId']),
      current: serializer.fromJson<bool>(json['current']),
      version: serializer.fromJson<int>(json['version']),
      cloudId: serializer.fromJson<String?>(json['cloudId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'contactId': serializer.toJson<int?>(contactId),
      'enterpriseId': serializer.toJson<int?>(enterpriseId),
      'current': serializer.toJson<bool>(current),
      'version': serializer.toJson<int>(version),
      'cloudId': serializer.toJson<String?>(cloudId),
    };
  }

  EnterprisecontactData copyWith(
          {int? id,
          int? contactId,
          int? enterpriseId,
          bool? current,
          int? version,
          String? cloudId}) =>
      EnterprisecontactData(
        id: id ?? this.id,
        contactId: contactId ?? this.contactId,
        enterpriseId: enterpriseId ?? this.enterpriseId,
        current: current ?? this.current,
        version: version ?? this.version,
        cloudId: cloudId ?? this.cloudId,
      );
  @override
  String toString() {
    return (StringBuffer('EnterprisecontactData(')
          ..write('id: $id, ')
          ..write('contactId: $contactId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('current: $current, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, contactId, enterpriseId, current, version, cloudId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EnterprisecontactData &&
          other.id == this.id &&
          other.contactId == this.contactId &&
          other.enterpriseId == this.enterpriseId &&
          other.current == this.current &&
          other.version == this.version &&
          other.cloudId == this.cloudId);
}

class EnterprisecontactCompanion
    extends UpdateCompanion<EnterprisecontactData> {
  final Value<int> id;
  final Value<int?> contactId;
  final Value<int?> enterpriseId;
  final Value<bool> current;
  final Value<int> version;
  final Value<String?> cloudId;
  const EnterprisecontactCompanion({
    this.id = const Value.absent(),
    this.contactId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    this.current = const Value.absent(),
    this.version = const Value.absent(),
    this.cloudId = const Value.absent(),
  });
  EnterprisecontactCompanion.insert({
    this.id = const Value.absent(),
    this.contactId = const Value.absent(),
    this.enterpriseId = const Value.absent(),
    required bool current,
    required int version,
    this.cloudId = const Value.absent(),
  })  : current = Value(current),
        version = Value(version);
  static Insertable<EnterprisecontactData> custom({
    Expression<int>? id,
    Expression<int?>? contactId,
    Expression<int?>? enterpriseId,
    Expression<bool>? current,
    Expression<int>? version,
    Expression<String?>? cloudId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (contactId != null) 'contactId': contactId,
      if (enterpriseId != null) 'enterpriseId': enterpriseId,
      if (current != null) 'current': current,
      if (version != null) 'version': version,
      if (cloudId != null) 'cloudId': cloudId,
    });
  }

  EnterprisecontactCompanion copyWith(
      {Value<int>? id,
      Value<int?>? contactId,
      Value<int?>? enterpriseId,
      Value<bool>? current,
      Value<int>? version,
      Value<String?>? cloudId}) {
    return EnterprisecontactCompanion(
      id: id ?? this.id,
      contactId: contactId ?? this.contactId,
      enterpriseId: enterpriseId ?? this.enterpriseId,
      current: current ?? this.current,
      version: version ?? this.version,
      cloudId: cloudId ?? this.cloudId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (contactId.present) {
      map['contactId'] = Variable<int?>(contactId.value);
    }
    if (enterpriseId.present) {
      map['enterpriseId'] = Variable<int?>(enterpriseId.value);
    }
    if (current.present) {
      map['current'] = Variable<bool>(current.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (cloudId.present) {
      map['cloudId'] = Variable<String?>(cloudId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnterprisecontactCompanion(')
          ..write('id: $id, ')
          ..write('contactId: $contactId, ')
          ..write('enterpriseId: $enterpriseId, ')
          ..write('current: $current, ')
          ..write('version: $version, ')
          ..write('cloudId: $cloudId')
          ..write(')'))
        .toString();
  }
}

class $EnterprisecontactTable extends Enterprisecontact
    with TableInfo<$EnterprisecontactTable, EnterprisecontactData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EnterprisecontactTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _contactIdMeta = const VerificationMeta('contactId');
  @override
  late final GeneratedColumn<int?> contactId = GeneratedColumn<int?>(
      'contactId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES contact (id)');
  final VerificationMeta _enterpriseIdMeta =
      const VerificationMeta('enterpriseId');
  @override
  late final GeneratedColumn<int?> enterpriseId = GeneratedColumn<int?>(
      'enterpriseId', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES enterprise (id)');
  final VerificationMeta _currentMeta = const VerificationMeta('current');
  @override
  late final GeneratedColumn<bool?> current = GeneratedColumn<bool?>(
      'current', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("current" IN (0, 1))');
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  @override
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudIdMeta = const VerificationMeta('cloudId');
  @override
  late final GeneratedColumn<String?> cloudId = GeneratedColumn<String?>(
      'cloudId', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, contactId, enterpriseId, current, version, cloudId];
  @override
  String get aliasedName => _alias ?? 'enterprisecontact';
  @override
  String get actualTableName => 'enterprisecontact';
  @override
  VerificationContext validateIntegrity(
      Insertable<EnterprisecontactData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('contactId')) {
      context.handle(_contactIdMeta,
          contactId.isAcceptableOrUnknown(data['contactId']!, _contactIdMeta));
    }
    if (data.containsKey('enterpriseId')) {
      context.handle(
          _enterpriseIdMeta,
          enterpriseId.isAcceptableOrUnknown(
              data['enterpriseId']!, _enterpriseIdMeta));
    }
    if (data.containsKey('current')) {
      context.handle(_currentMeta,
          current.isAcceptableOrUnknown(data['current']!, _currentMeta));
    } else if (isInserting) {
      context.missing(_currentMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('cloudId')) {
      context.handle(_cloudIdMeta,
          cloudId.isAcceptableOrUnknown(data['cloudId']!, _cloudIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EnterprisecontactData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EnterprisecontactData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EnterprisecontactTable createAlias(String alias) {
    return $EnterprisecontactTable(attachedDatabase, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $PhoneTable phone = $PhoneTable(this);
  late final $ContactTable contact = $ContactTable(this);
  late final $FileEnterpriseTable fileEnterprise = $FileEnterpriseTable(this);
  late final $SupportTable support = $SupportTable(this);
  late final $AddressTable address = $AddressTable(this);
  late final $BankTable bank = $BankTable(this);
  late final $EnterpriseTable enterprise = $EnterpriseTable(this);
  late final $EntrytypeproductTable entrytypeproduct =
      $EntrytypeproductTable(this);
  late final $UserTable user = $UserTable(this);
  late final $CredentialTable credential = $CredentialTable(this);
  late final $EmployeeTable employee = $EmployeeTable(this);
  late final $RoleTable role = $RoleTable(this);
  late final $PermissionTable permission = $PermissionTable(this);
  late final $ExpenseTable expense = $ExpenseTable(this);
  late final $CustomerTable customer = $CustomerTable(this);
  late final $FidelityTable fidelity = $FidelityTable(this);
  late final $SupplierTable supplier = $SupplierTable(this);
  late final $ProductTable product = $ProductTable(this);
  late final $PriceTable price = $PriceTable(this);
  late final $ProductstatusTable productstatus = $ProductstatusTable(this);
  late final $CardTable card = $CardTable(this);
  late final $ProductsoldTable productsold = $ProductsoldTable(this);
  late final $SellTable sell = $SellTable(this);
  late final $QuoteTable quote = $QuoteTable(this);
  late final $QuotestatusTable quotestatus = $QuotestatusTable(this);
  late final $CurrencyTable currency = $CurrencyTable(this);
  late final $ProductphotoTable productphoto = $ProductphotoTable(this);
  late final $SoldTable sold = $SoldTable(this);
  late final $EnterpriseaddressTable enterpriseaddress =
      $EnterpriseaddressTable(this);
  late final $EnterprisecontactTable enterprisecontact =
      $EnterprisecontactTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        phone,
        contact,
        fileEnterprise,
        support,
        address,
        bank,
        enterprise,
        entrytypeproduct,
        user,
        credential,
        employee,
        role,
        permission,
        expense,
        customer,
        fidelity,
        supplier,
        product,
        price,
        productstatus,
        card,
        productsold,
        sell,
        quote,
        quotestatus,
        currency,
        productphoto,
        sold,
        enterpriseaddress,
        enterprisecontact
      ];
}
