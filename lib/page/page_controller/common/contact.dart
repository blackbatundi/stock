import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:flutter/material.dart';

class ContactController {
  int? id;
  String? belongsTo;
  int? phoneId;
  TextEditingController number = TextEditingController();
  String code = "+243";
  TextEditingController email = TextEditingController();
  TextEditingController webSite = TextEditingController();

  ContactController({ContactData? contact, PhoneData? phone}) {
    id = contact?.id;
    phoneId = phone?.id;
    number = TextEditingController(text: phone?.number);
    email = TextEditingController(text: contact?.email);
    webSite = TextEditingController(text: contact?.internet);
  }

  bool get validation =>
      number.text.trim().isNotEmpty ||
      email.text.trim().isNotEmpty ||
      webSite.text.trim().isNotEmpty;
}
