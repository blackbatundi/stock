import 'package:cobiz/services/data/local/db/gen/app_db.dart';

class EnterpriseModel {
  EnterpriseData? enterpriseInfo;
  BankData? bank;
  Addres? addres;
  ContactData? contact;
  PhoneData? phone;
  EnterpriseModel({
    this.enterpriseInfo,
    this.bank,
    this.addres,
    this.contact,
    this.phone,
  });
}
