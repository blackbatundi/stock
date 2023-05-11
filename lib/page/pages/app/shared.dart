import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class AppPageShared {
  static Widget memu(int index) => SizedBox(
        width: 150,
        child: Text(
          menuTitle[index],
          style: APPSTYLE.header1,
        ),
      );
  static Widget menuApp({
    Function()? onPressed,
    int? selectedIndex,
    int? index,
  }) =>
      InkWell(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          width: 170,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: selectedIndex! == index
                ? APPSTYLE.PRIMARY_COLOR_DARK
                : Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                selectedIndex != index
                    ? menuIcons[index!]
                    : selectIcons[index!],
                color:
                    selectedIndex == index ? APPSTYLE.WHITE_COLOR : Colors.grey,
              ),
              20.widthBox,
              Expanded(
                child: Text(
                  menuTitle[index],
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex == index
                        ? APPSTYLE.WHITE_COLOR
                        : APPSTYLE.SECOND_TEXT_COLOR,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  static List<IconData> menuIcons = [
    Iconsax.home, // enterprise// customer
    Iconsax.export, //
    Iconsax.add_circle,
    Iconsax.radar,
    Iconsax.export,
    Iconsax.status_up,
    Iconsax.happyemoji,
    Iconsax.setting,
  ];

  static List<IconData> selectIcons = [
    Iconsax.home_25, // enterprise// customer
    Iconsax.export_25, //
    Iconsax.add_circle5,
    Iconsax.radar_25,
    Iconsax.export_25,
    Iconsax.status_up5, //,
    Iconsax.happyemoji5,
    Iconsax.setting,
  ];
  static List<String> menuTitle = [
    "Entreprise",
    "Vente",
    "Fournisseur",
    "Stock",
    "Depense",
    "Rapport",
    "Devis",
    "Parametre"
  ];
}
