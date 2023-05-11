import 'package:cobiz/services/data/local/db/utils.dart';
import 'package:cobiz/services/data/local/entity/app_entity.dart';

import 'package:drift/drift.dart';

part 'app_db.g.dart';

@DriftDatabase(tables: [
  Phone,
  Contact,
  FileEnterprise,
  Support,
  Address,
  Enterprise,
  Entrytypeproduct,
  User,
  Credential,
  Employee,
  Permission,
  Role,
  Expense,
  Customer,
  Fidelity,
  Supplier,
  Product,
  Price,
  Productstatus,
  Card,
  Productsold,
  Sell,
  Quote,
  Bank,
  Quotestatus,
  Currency,
  Productphoto,
  Sold,
  Enterpriseaddress,
  Enterprisecontact
])
class AppDb extends _$AppDb {
  AppDb() : super(openConnection());
  AppDb._() : super(openConnection());
  static AppDb singleton() => AppDb._();

  @override
  int get schemaVersion => 59;

  //activate foreign key
  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: ((details) async {
          // await customStatement('PRAGMA foreign_keys=ON');
        }),
      );
}
