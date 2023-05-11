import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';

class ResponseWithStatus {
  final dynamic data;
  final int? statusCode;
  final String? errorMessage;

  ResponseWithStatus({this.errorMessage, this.data, this.statusCode});
}

abstract class Statuscode {
  static int get success => 200;
  static int get error => 400;
  static int get notfound => 404;
}

abstract class ResponseMessage {
  static String get success => "creaction avec succès";
  static String get requiredEnterpriseName =>
      "veillez entré le nom de l'entreprise";
  static String get error => "une erreur est survenue";
  static String get exist =>
      "veillez choisir une autre valeur ,celle-ci est déjà prise";
  static String get existedEmail => "l'addresse e-mail existe déjà";
  static String get existedwebsite => "le site web existe déjà";
  static String get existedenterprisename =>
      "le nom de l'entreprise existe déjà";
}

class ImageUtility {
  static late List<int> listInt;
  static late Uint8List bytes;

  //this function return the string to insert into the database
  static String encodeIntListToBase64(String? sourceImage) {
    listInt = utf8.encode(sourceImage!);
    bytes = Uint8List.fromList(listInt);
    return base64String(ImageUtility.bytes);
  }

  static Uint8List test(String? sourceImage) {
    listInt = utf8.encode(sourceImage!);
    bytes = Uint8List.fromList(listInt);
    return bytes;
  }

  static String decodeUin8list(String data) {
    bytes = dataFromBase64String(data);
    return utf8.decode(bytes);
  }

  static Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  static String base64String(Uint8List data) {
    return base64Encode(data);
  }
}

//generate random of string
class Randoms {
  static String generateRandomString(int length) {
    final random = Random();
    const availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => availableChars[random.nextInt(availableChars.length)])
        .join();

    return randomString;
  }
}
