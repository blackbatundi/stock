import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/page/page_controller/common/address.dart';
import 'package:cobiz/page/page_controller/common/bank.dart';
import 'package:cobiz/page/page_controller/common/contact.dart';
import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:flutter/material.dart';

class EntrepiseController {
  int? id;
  String? logo;
  TextEditingController designation = TextEditingController();
  TextEditingController rccm = TextEditingController();
  TextEditingController impot = TextEditingController();
  TextEditingController idnat = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController code = TextEditingController();

  /*
    When the user will want to edit some thing here we will bring him the info of the 
    last saving 
   */

  EntrepiseController({EnterpriseData? enterprise}) {
    id = enterprise?.id;
    designation = TextEditingController(text: enterprise?.reason);
    description = TextEditingController(text: enterprise?.description);
    rccm = TextEditingController(text: enterprise?.rccm);
    impot = TextEditingController(text: enterprise?.tax);
    idnat = TextEditingController(text: enterprise?.idnat);
    code = TextEditingController(text: enterprise?.codeEnterprise);
  }

  bool get validation =>
      code.text.isNotEmpty ||
      description.text.isNotEmpty ||
      designation.text.isNotEmpty ||
      rccm.text.isNotEmpty ||
      idnat.text.isNotEmpty ||
      impot.text.isNotEmpty;

  void submit(AppBloc bloc) {
    if (validation) {
      bloc.add(
        ADDOREDDITENTERPRISE(
          designation: designation.text.trim(),
          description: description.text.trim(),
          rccm: rccm.text.trim(),
          idNat: idnat.text.trim(),
          impot: impot.text.trim(),
          code: code.text.trim(),
        ),
      );
    }
  }

  void insertOrEditAddress({AppBloc? bloc, AddressController? address}) {
    if (address != null && address.validation) {
      bloc!.add(
        ADDENTERPRISEADDRESS(
          addressId: address.id,
          street: address.street.text.trim(),
          common: address.common.text.trim(),
          number: address.number.text.trim(),
          country: address.country.text.trim(),
          city: address.city.text.trim(),
          town: address.town.text.trim(),
          quarter: address.quater.text.trim(),
          enterpriseId: id,
        ),
      );
    }
  }

  void insertOrUpadateContactAndBank(
      {AppBloc? bloc, ContactController? contact, BankController? bank}) {
    if (contact!.validation) {
      bloc!.add(
        ADDOREDITENTERPRISECONTACT(
          contactId: contact.id,
          phoneId: contact.phoneId,
          enterpriseId: id,
          email: contact.email.text.trim(),
          webSite: contact.webSite.text.trim(),
          number: contact.number.text.trim(),
          code: contact.code,
        ),
      );
    }

    if (bank != null && bank.validation) {
      bloc!.add(
        ADDOREDITENTERPRISEBANK(
          enterpriseId: id,
          bankId: bank.id,
          swiftCode: bank.swiftCode.text.trim(),
          accountName: bank.accounName.text.trim(),
          bankName: bank.bankName.text.trim(),
          accountNumber: bank.acountNumber.text.trim(),
        ),
      );
    }
  }
}
