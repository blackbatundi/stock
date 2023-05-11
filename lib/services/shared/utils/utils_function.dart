import 'dart:math';

import 'package:flutter/material.dart';

Future<dynamic> customershowDialog(BuildContext context, {Widget? child}) {
  return showDialog(
    context: context,
    barrierColor: Colors.transparent,
    builder: (context) => child!,
  );
}

// adding the generating password
String generatePassWord() {
  String finalString = "";

  for (int i = 0; i < 15; i++) {
    finalString +=
        "abcde12345)(gh-?klABCDE@%&IJKLMNOPQRSTUVWXYZmnopqrstuvwxyz0789"[
            Random().nextInt(62)];
  }
  return finalString;
}
