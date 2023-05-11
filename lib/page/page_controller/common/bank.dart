import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:flutter/material.dart';

class BankController {
  int? id;
  String? belongsTo;
  TextEditingController acountNumber = TextEditingController();
  TextEditingController accounName = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController swiftCode = TextEditingController();

  BankController({BankData? bank}) {
    id = bank?.id;
    accounName = TextEditingController(text: bank?.accountName);
    acountNumber = TextEditingController(text: bank?.accountNumber);
    bankName = TextEditingController(text: bank?.accountName);
    swiftCode = TextEditingController(text: bank?.code);
  }

  bool get validation =>
      accounName.text.trim().isNotEmpty ||
      acountNumber.text.trim().isNotEmpty ||
      bankName.text.trim().isNotEmpty ||
      swiftCode.text.trim().isNotEmpty;
}
