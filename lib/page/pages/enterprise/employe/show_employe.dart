import 'package:cobiz/page/pages/enterprise/employe/add_employe.dart';
import 'package:cobiz/page/pages/enterprise/employe/detail_employe.dart';
import 'package:cobiz/services/shared/utils/utils_function.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowEmploye extends StatefulWidget {
  const ShowEmploye({super.key});

  @override
  State<ShowEmploye> createState() => _ShowEmployeState();
}

class _ShowEmployeState extends State<ShowEmploye> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        infoTabBar(),
        tabHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                30,
                (index) => allEmploye(index: index),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget tabHeader() {
    double space = 10;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeCode,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 2,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeName,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 3,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeAdress,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 2,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployePhone,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeRole,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeAction,
            ),
          ),
        ],
      ),
    );
  }

  Widget allEmploye({
    int? index,
  }) {
    Widget spacer = 15.widthBox;
    return OnHoverEffect(
      child: InkWell(
        onTap: () {
          customershowDialog(context, child: const DetailEmploye());
        },
        child: Container(
          padding: const EdgeInsets.only(
            left: 60,
            right: 60,
            bottom: 15,
            top: 15,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: index! % 2 == 0 ? APPSTYLE.WHITE_COLOR : Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: employeModel(
                  title: "00${index + 1}",
                ),
              ),
              spacer,
              Expanded(
                flex: 2,
                child: employeModel(title: "designation"),
              ),
              spacer,
              Expanded(
                flex: 3,
                child: employeModel(title: "Adresse"),
              ),
              spacer,
              Expanded(
                flex: 2,
                child: employeModel(title: "+243 (0) 976 829 270"),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: employeModel(title: "Admin"),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: Wrap(
                  spacing: 15,
                  children: [
                    modelAction(
                      onTap: () {},
                      icon: Iconsax.edit,
                      color: APPSTYLE.BLACK_COLOR,
                    ),
                    modelAction(
                      onTap: () {},
                      icon: Iconsax.user_edit,
                      color: Colors.red,
                    ),
                    modelAction(
                        onTap: () {},
                        icon: Iconsax.stop_circle5,
                        color: Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoTabBar() {
    return Container(
      padding: const EdgeInsets.only(
        left: 60,
        right: 60,
        top: 15,
        bottom: 15,
      ),
      decoration: BoxDecoration(
        color: APPSTYLE.WHITE_COLOR,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppLocalizations.of(context)!.titleEmployee,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          10.widthBox,
          Row(
            children: [
              OnHoverEffect(
                child: InkWell(
                  onTap: () {
                    customershowDialog(context, child: const AddEmploye());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: APPSTYLE.PRIMARY_COLOR_LIGH,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      Iconsax.add,
                      color: APPSTYLE.WHITE_COLOR,
                    ),
                  ),
                ),
              ),
              10.widthBox,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: APPSTYLE.BORDER_COLOR,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          hintText: "Tapez un mot clé",
                          helperStyle: GoogleFonts.montserrat(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    10.widthBox,
                    Icon(
                      Iconsax.search_normal,
                      color: APPSTYLE.SECOND_TEXT_COLOR,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tabHeaderDetailModel({String? title}) {
    return Text(
      title!,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }

  Widget modelAction({
    Function()? onTap,
    IconData? icon,
    Color? color,
  }) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }

  Widget employeModel({String? title}) {
    return Text(
      title!,
      style: GoogleFonts.montserrat(
        fontSize: 13,
        color: APPSTYLE.SECOND_TEXT_COLOR,
        height: 1.6,
      ),
    );
  }
}
