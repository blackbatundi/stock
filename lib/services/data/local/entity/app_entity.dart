import 'package:drift/drift.dart';

class Phone extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get code => text().named('code').nullable()();
  TextColumn get number => text().named('number').nullable()();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Contact extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text().named('email').nullable()();
  TextColumn get internet => text().named('internet').nullable()();
  IntColumn get phoneId =>
      integer().named('phoneId').nullable().references(Phone, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class FileEnterprise extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get file => text().named('file')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Support extends Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get imageId =>
      integer().named('imageId').nullable().references(FileEnterprise, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Address extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get country => text().named('country').nullable()();
  TextColumn get town => text().named('town').nullable()();
  TextColumn get city => text().named('city').nullable()();
  TextColumn get commune => text().named('commune').nullable()();
  TextColumn get quater => text().named('quater').nullable()();
  TextColumn get street => text().named('street').nullable()();
  TextColumn get number => text().named('number').nullable()();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Bank extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get bankname => text().named('bankname').nullable()();
  TextColumn get accountName => text().named('accountName').nullable()();
  TextColumn get code => text().named('code').nullable()();
  TextColumn get accountNumber => text().named('accountNumber').nullable()();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Enterprise extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get reason => text().named('reason').nullable()();
  TextColumn get description => text().named('description').nullable()();
  TextColumn get rccm => text().named('rccm').nullable()();
  TextColumn get tax => text().named('tax').nullable()();
  TextColumn get codeEnterprise => text().named('codeEnterprise').nullable()();
  TextColumn get idnat => text().named('idnat')();

  IntColumn get supportId =>
      integer().named('supportId').nullable().references(Support, #id)();

  IntColumn get bankId =>
      integer().named('bankId').nullable().references(Bank, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstname => text().named('firstname').nullable()();
  TextColumn get secondname => text().named('secondname').nullable()();
  IntColumn get photoId =>
      integer().named('photoId').nullable().references(FileEnterprise, #id)();
  IntColumn get contactId =>
      integer().named('contactId').nullable().references(Contact, #id)();
  IntColumn get addressId =>
      integer().named('addressId').nullable().references(Address, #id)();

  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();

  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Credential extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get username => text().named('username')();
  TextColumn get password => text().named('password')();
  TextColumn get token => text().named('token')();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Employee extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Expense extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get designation => text().named('designation')();
  TextColumn get description => text().named('description')();
  TextColumn get code => text().named('code')();
  TextColumn get nlnvoice => text().named('nlnvoice')();
  RealColumn get amount => real().named('amount')();
  IntColumn get employeeId =>
      integer().named('employeeId').nullable().references(Employee, #id)();
  IntColumn get fileId =>
      integer().named('imageId').nullable().references(FileEnterprise, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Customer extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get code => integer().named('code')();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Fidelity extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get amount => real().named('amount')();
  IntColumn get customerId =>
      integer().named('customerId').nullable().references(Customer, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Supplier extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get designation => text().named('designation')();
  TextColumn get code => text().named('code')();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Product extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().named('description').nullable()();
  TextColumn get designation => text().named('designation')();

  TextColumn get caracteristic => text().named('caracteristic').nullable()();
  TextColumn get entrytype => text().named('entrytype')();
  TextColumn get producttype => text().named('producttype').nullable()();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  RealColumn get quantity => real().named('quantity').nullable()();
  TextColumn get unite => text().named('unite')();

  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  IntColumn get supplierId =>
      integer().named('supplierId').nullable().references(Supplier, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Price extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get purchase => real().named('purchase').nullable()();
  RealColumn get maximun => real().named('maximum')();
  RealColumn get minimum => real().named('minimum')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get productId =>
      integer().named('productId').nullable().references(Product, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Productstatus extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get quantity => real().named('quantity')();
  IntColumn get productId =>
      integer().named('productId').nullable().references(Product, #id)();
  IntColumn get priceId =>
      integer().named('priceId').nullable().references(Price, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();

  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Card extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().named('card')();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Productsold extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get price => real().named('price')();
  RealColumn get discount => real().named('discount')();
  IntColumn get quantity => integer().named('quantity')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get productId =>
      integer().named('productId').nullable().references(Product, #id)();
  IntColumn get cardId =>
      integer().named('cardId').nullable().references(Card, #id)();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Sell extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get amount => real().named('amount')();
  RealColumn get rest => real().named('rest')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  IntColumn get cardId =>
      integer().named('cardId').nullable().references(Card, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Quote extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get state => text().named('state')();
  TextColumn get description => text().named('description')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  TextColumn get code => text().named('code')();
  IntColumn get cardId =>
      integer().named('cardId').nullable().references(Card, #id)();
  IntColumn get employeeId =>
      integer().named('employeeId').nullable().references(Employee, #id)();
  IntColumn get customerId =>
      integer().named('customerId').nullable().references(Customer, #id)();
  IntColumn get fileId =>
      integer().named('file').nullable().references(FileEnterprise, #id)();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Quotestatus extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get employeeId =>
      integer().named('employeeId').nullable().references(Employee, #id)();
  IntColumn get quoteId =>
      integer().named('quoteId').nullable().references(Quote, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Currency extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().named('description')();
  TextColumn get current => text().named('current')();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Sold extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get customerId =>
      integer().named('customerId').nullable().references(Customer, #id)();
  IntColumn get sellId =>
      integer().named('sellId').nullable().references(Sell, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Role extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get designation => text().named('designation')();
  TextColumn get description => text().named('description')();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  IntColumn get userId =>
      integer().named('userId').nullable().references(User, #id)();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Permission extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get designation => text().named('designation')();
  TextColumn get description => text().named('description')();
  IntColumn get roleId =>
      integer().named('roleId').nullable().references(Role, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Entrytypeproduct extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get designation => text().named('designation')();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  DateTimeColumn get createdAt => dateTime().named('createdAt')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Productphoto extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get imageId =>
      integer().named('imageId').nullable().references(FileEnterprise, #id)();
  IntColumn get productId =>
      integer().named('productId').nullable().references(Product, #id)();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Enterprisecontact extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get contactId =>
      integer().named('contactId').nullable().references(Contact, #id)();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  BoolColumn get current => boolean().named('current')();
  IntColumn get version => integer().named('version')();
  TextColumn get cloudId => text().named('cloudId').nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

class Enterpriseaddress extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get addressId =>
      integer().named('addressId').nullable().references(Address, #id)();
  IntColumn get enterpriseId =>
      integer().named('enterpriseId').nullable().references(Enterprise, #id)();
  BoolColumn get current => boolean().named('current')();
  IntColumn get version => integer().named('version')();
  @override
  Set<Column> get primaryKey => {id};
}

class Hope extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get version => integer().named('version')();
  @override
  Set<Column> get primaryKey => {id};
}
