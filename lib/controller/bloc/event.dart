import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/provider/produit/modele.dart';

abstract class AppEvent {}

/*
   THOSE ARE EVENTS FOR THE USER INTERFACE
*/
class USERCHANGEMENU implements AppEvent {
  final int index;
  USERCHANGEMENU(this.index);
}

class PICKIMAGE implements AppEvent {
  PICKIMAGE();
}

class REMOVEONEIMAGE implements AppEvent {
  REMOVEONEIMAGE();
}

class EDITONEIMAGE implements AppEvent {
  EDITONEIMAGE();
}

class ADDOREDDITENTERPRISE implements AppEvent {
  final String? designation;
  final String? description;
  final String? rccm;
  final String? idNat;
  final String? impot;
  final String? code;

  ADDOREDDITENTERPRISE({
    this.designation,
    this.description,
    this.rccm,
    this.idNat,
    this.impot,
    this.code,
  });
}

class GETENTERPRISE implements AppEvent {}

class ADDENTERPRISEADDRESS implements AppEvent {
  final int? addressId;
  final int?
      enterpriseId; // this is the owner of the address and i may be the user, the enterprise or others
  final String? country;
  final String? city;
  final String? town;
  final String? common;
  final String? quarter;
  final String? street;
  final String? number;

  ADDENTERPRISEADDRESS({
    this.addressId,
    this.street,
    this.enterpriseId,
    this.country,
    this.city,
    this.town,
    this.common,
    this.quarter,
    this.number,
  });
}

class ADDOREDITENTERPRISECONTACT implements AppEvent {
  final int? contactId;
  final int? phoneId;
  final int?
      enterpriseId; // this is the owner of the address and i may be the user, the enterprise or others
  final String? code;
  final String? number;
  final String? email;
  final String? webSite;

  ADDOREDITENTERPRISECONTACT({
    this.contactId,
    this.enterpriseId,
    this.code,
    this.number,
    this.email,
    this.webSite,
    this.phoneId,
  });

  String get show =>
      "AddOrEditEnterprise( contactId: $contactId, enterpriseId : $enterpriseId,code : $code, number: $number, email : $email, internet :  $webSite,phoneId: $phoneId)";
}

class ADDOREDITENTERPRISEBANK implements AppEvent {
  final int? bankId;
  final String? bankName;
  final int?
      enterpriseId; // this is the owner of the address and i may be the user, the enterprise or others
  final String? swiftCode;
  final String? accountNumber;
  final String? accountName;

  ADDOREDITENTERPRISEBANK({
    this.bankId,
    this.enterpriseId,
    this.swiftCode,
    this.accountNumber,
    this.accountName,
    this.bankName,
  });

  String get show =>
      "AddOrEditEnterprise( BankId: $bankId, enterpriseId : $enterpriseId,Swift code : $swiftCode, account number: $accountNumber, Account name : $accountName, bank name : $bankName)";
}

class ADDOREDITPRODUCT implements AppEvent {
  int? enterpriseId;
  List<InsertItem>? items;

  ADDOREDITPRODUCT({
    this.items,
  });
}

class GETALLPRODUCT implements AppEvent {}

class SetStock implements AppEvent {
  List<SetStockmodel> setProductStock;
  SetStock(this.setProductStock);
}
