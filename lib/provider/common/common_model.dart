class AddressModel {
  int? id;
  String? country;
  String? city;
  String? town;
  String? common;
  String? quarter;
  String? number;
  String? street;
  int? createdAt;
  int? version;
  String? cloudId;

  AddressModel({
    this.id,
    this.city,
    this.common,
    this.country,
    this.number,
    this.quarter,
    this.town,
    this.street,
    this.version,
    this.cloudId,
  });

  AddressModel.fromJson(Map<String, dynamic>? json) {
    id = json?['id'];
    version = json?['version'];
    city = json?['city'];
    common = json?["commune"];
    country = json?['country'];
    number = json?['number'];
    quarter = json?['quater'];
    town = json?['town'];
    street = json?['street'];
    createdAt = json?['createdAt'];
    cloudId = json?['cloudId'];
  }

  Map<String, dynamic> toJson() => {
        "city": city,
        "commune": common,
        "country": country,
        "quarter": quarter,
        "number": number,
        "town": town,
        "version": version,
        "cloudId": cloudId,
      };
}

class ContactModel {
  int? id;
  String? email;
  String? webSite;
  PhoneModel? phone;

  int? createdAt;
  int? version;
  String? cloudId;

  ContactModel({
    this.id,
    this.webSite,
    this.email,
    this.version,
    this.cloudId,
    this.createdAt,
  }) : phone = PhoneModel();

  ContactModel.fromJson(Map<String, dynamic>? json) : phone = PhoneModel() {
    id = json?['id'];
    email = json?['email'];
    webSite = json?['internet'];
    phone = json?['phone'] != null ? PhoneModel.fromJson(json?['phone']) : null;

    version = json?['version'];
    createdAt = json?['createdAt'];
    cloudId = json?['cloudId'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "internet": webSite,
        "phone": phone,
        "version": version,
        "cloudId": cloudId,
      };
}

class PhoneModel {
  int? id;
  String? code;
  String? number;

  int? createdAt;
  int? version;
  String? cloudId;

  PhoneModel({
    this.id,
    this.code,
    this.number,
    this.version,
    this.cloudId,
  });

  PhoneModel.fromJson(Map<String, dynamic>? json) {
    id = json?['id'];
    code = json?['code'];
    number = json?['number'];

    version = json?['version'];
    createdAt = json?['createdAt'];
    cloudId = json?['cloudId'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "number": number,
        "version": version,
        "cloudId": cloudId,
      };
}

class BankModel {
  int? id;
  String? swiftCode;
  String? accountNumber;
  String? accountName;
  String? bankName;
  int? createdAt;
  int? version;
  String? cloudId;

  BankModel({
    this.id,
    this.bankName,
    this.accountNumber,
    this.version,
    this.swiftCode,
    this.accountName,
    this.createdAt,
    this.cloudId,
  });

  BankModel.fromJson(Map<String, dynamic>? json) {
    id = json?['id'];
    swiftCode = json?['code'];
    accountName = json?['accountName'];
    bankName = json?['bankname'];
    accountNumber = json?['accountNumber'];
    version = json?['version'];
    createdAt = json?['createdAt'];
    cloudId = json?['cloudId'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'bankname': bankName,
        'accountName': accountName,
        'code': swiftCode,
        'createdAt': createdAt,
        'version': version,
        'cloudId': cloudId,
      };
}
