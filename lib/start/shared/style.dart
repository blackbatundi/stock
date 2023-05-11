// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FONTSTYLETYPE { SMAL, NORMAL, LARG }

enum APPTHEME { DARK, LIGHT, PLATFORM }

class APPSTYLE {
  // for style
  static TextStyle header1 = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static TextStyle header2 = GoogleFonts.montserrat(
    fontSize: 13,
  );
  static TextStyle header3 = GoogleFonts.montserrat(
    fontSize: 13,
  );
  static TextStyle body1 = GoogleFonts.montserrat(fontSize: 12, height: 1.5);
  static TextStyle body1Seconted =
      GoogleFonts.montserrat(fontSize: 12, color: APPSTYLE.SECOND_TEXT_COLOR);

  static TextStyle body2 = GoogleFonts.montserrat(
    fontSize: 10,
  );

  static TextStyle body3 = GoogleFonts.montserrat(
    color: APPSTYLE.SECOND_TEXT_COLOR,
    fontSize: 12,
  );

  // light theme

  static Color SCAFFOLD_BACGROUND_COLOR_LIGH = const Color(0xFFF5F5F5);
  static Color WHITE_COLOR = const Color(0xFFFFFFFF);
  static Color BLACK_COLOR = const Color.fromARGB(255, 0, 0, 0);
  static Color PRIMARY_COLOR_LIGH = const Color(0xFF059BE9);
  static Color DESABLE_COLOR = const Color.fromARGB(113, 214, 214, 214);
  static Color ON_CONTAINER_COLOR = const Color.fromARGB(255, 241, 240, 240);
  static Color SHADOW_COLOR = const Color.fromARGB(172, 236, 236, 236);
  static Color SECOND_TEXT_COLOR = const Color.fromARGB(255, 160, 158, 158);
  static Color BORDER_COLOR = const Color.fromARGB(255, 236, 234, 234);
  static Color RED_COLOR = const Color.fromARGB(255, 230, 59, 11);
  static Color TRANSPARENT = Colors.transparent;
  static Color GREEN = const Color.fromARGB(255, 4, 116, 41);
  static Color ORANGE = Colors.orange;
  static Color PINK = Colors.pink;

  // dart theme

  static Color SCAFFOLD_BACGROUND_COLOR_DARK = const Color(0xFFF5F5F5);
  static Color PRIMARY_COLOR_DARK = const Color.fromARGB(255, 100, 123, 227);

  static Widget filter({
    String? text,
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Text(
      "$text",
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.montserrat(
        fontSize: 13,
        height: 1.5,
        color: color,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
