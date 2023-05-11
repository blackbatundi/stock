import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:flutter/widgets.dart';

class AddressController {
  int? id;
  String? belongsTo; // this one is an Id of the address belong to
  TextEditingController country = TextEditingController(text: "Congo/kinshasa");
  TextEditingController city = TextEditingController(text: "Nord-kivu");
  TextEditingController town = TextEditingController(text: "Goma");
  TextEditingController common = TextEditingController();
  TextEditingController quater = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController number = TextEditingController();

  AddressController({Addres? address}) {
    id = address?.id;
    country = TextEditingController(text: address?.country ?? "Congo/Kinshasa");
    city = TextEditingController(text: address?.city ?? "Nord-kivu");
    town = TextEditingController(text: address?.town ?? "Goma");
    common = TextEditingController(text: address?.commune);
    quater = TextEditingController(text: address?.quater);
    street = TextEditingController(text: address?.street);
    number = TextEditingController(text: address?.number);
  }

  bool get validation =>
      country.text.trim().isNotEmpty ||
      city.text.trim().isNotEmpty ||
      common.text.trim().isNotEmpty ||
      quater.text.trim().isNotEmpty ||
      street.text.trim().isNotEmpty ||
      number.text.trim().isNotEmpty;
}
