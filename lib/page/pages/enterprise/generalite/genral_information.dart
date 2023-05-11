import 'package:cobiz/page/pages/enterprise/generalite/edit_general_information.dart';
import 'package:cobiz/provider/enterprise/model.dart';
import 'package:cobiz/services/shared/utils/edit_profile.dart';
import 'package:cobiz/services/shared/utils/utils_function.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../services/data/local/db/query/enterprise_query.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({super.key});

  @override
  State<GeneralInformation> createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  final expanderKey = GlobalKey<ExpanderState>(debugLabel: 'Expander key');
  final expanderKey1 = GlobalKey<ExpanderState>(debugLabel: 'Expander key1');
  final expanderKey2 = GlobalKey<ExpanderState>(debugLabel: 'Expander key2');
  EnterpriseDB enterpriseDB = EnterpriseDB.singleton;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EnterpriseModel>(
        stream: enterpriseDB.getinteprise,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        30.heightBox,
                        Stack(
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: APPSTYLE.WHITE_COLOR,
                                  width: 5,
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: APPSTYLE.SHADOW_COLOR,
                                    offset: const Offset(3, 5),
                                    blurRadius: 5,
                                  ),
                                  BoxShadow(
                                    color: APPSTYLE.SHADOW_COLOR,
                                    offset: const Offset(-3, -5),
                                    blurRadius: 5,
                                  ),
                                ],
                                shape: BoxShape.circle,
                                color: APPSTYLE.WHITE_COLOR,
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/user.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 0,
                              child: InkWell(
                                onTap: () async {
                                  await customershowDialog(
                                    context,
                                    child: const EditProfile(),
                                  ).then((value) => null);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: APPSTYLE.ON_CONTAINER_COLOR,
                                    border: Border.all(
                                      color: APPSTYLE
                                          .SCAFFOLD_BACGROUND_COLOR_LIGH,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: const Icon(
                                    Iconsax.edit,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        10.heightBox,
                        SizedBox(
                          width: 500,
                          child: Text(
                            snapshot.data!.enterpriseInfo != null &&
                                    snapshot.data!.enterpriseInfo!.reason !=
                                        null
                                ? snapshot.data!.enterpriseInfo!.reason!
                                : "Rasison sociale",
                            textAlign: TextAlign.center,
                            style: APPSTYLE.body1,
                          ),
                        ),
                        10.heightBox,
                        snapshot.data!.enterpriseInfo != null &&
                                snapshot.data!.enterpriseInfo!.description !=
                                    null &&
                                snapshot.data!.enterpriseInfo!.description != ""
                            ? SizedBox(
                                width: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      snapshot
                                          .data!.enterpriseInfo!.description!,
                                      textAlign: TextAlign.center,
                                      style: APPSTYLE.body1,
                                    ),
                                    10.heightBox,
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                        30.heightBox,
                        containerInfo(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      snapshot.data!.enterpriseInfo != null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .tax !=
                                                  null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .tax !=
                                                  ""
                                          ? snapshot.data!.enterpriseInfo!.tax!
                                          : "Numero impot".toUpperCase(),
                                      style: APPSTYLE.body1,
                                    ),
                                  ),
                                  10.widthBox,
                                  Text(
                                    AppLocalizations.of(context)!
                                        .tax
                                        .toUpperCase(),
                                    style: APPSTYLE.body2,
                                  ),
                                ],
                              ),
                              const CustomDivider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      snapshot.data!.enterpriseInfo != null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .rccm !=
                                                  null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .rccm !=
                                                  ""
                                          ? snapshot.data!.enterpriseInfo!.rccm!
                                          : "RCCM".toUpperCase(),
                                      style: APPSTYLE.body1,
                                    ),
                                  ),
                                  10.widthBox,
                                  Text(
                                    "rccm".toUpperCase(),
                                    style: APPSTYLE.body2,
                                  ),
                                ],
                              ),
                              const CustomDivider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      snapshot.data!.enterpriseInfo != null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .idnat !=
                                                  ""
                                          ? snapshot.data!.enterpriseInfo!.idnat
                                          : "Identification nationale"
                                              .toUpperCase(),
                                      style: APPSTYLE.body1,
                                    ),
                                  ),
                                  10.widthBox,
                                  Text(
                                    AppLocalizations.of(context)!
                                        .natId
                                        .toUpperCase(),
                                    style: APPSTYLE.body2,
                                  ),
                                ],
                              ),
                              const CustomDivider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      snapshot.data!.enterpriseInfo != null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .codeEnterprise !=
                                                  null &&
                                              snapshot.data!.enterpriseInfo!
                                                      .codeEnterprise !=
                                                  ""
                                          ? snapshot.data!.enterpriseInfo!
                                              .codeEnterprise!
                                          : "Code entreprise".toUpperCase(),
                                      style: APPSTYLE.body1,
                                    ),
                                  ),
                                  10.widthBox,
                                  Text(
                                    "Code".toUpperCase(),
                                    style: APPSTYLE.body2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        15.heightBox,
                        SizedBox(
                          width: 500,
                          child: Expander(
                            key: expanderKey,
                            contentBackgroundColor: APPSTYLE.WHITE_COLOR,
                            header: Text(
                              "Adresse".toUpperCase(),
                              style: APPSTYLE.body1,
                            ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!
                                                        .country !=
                                                    null
                                            ? snapshot.data!.addres!.country!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .country
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!.city !=
                                                    null
                                            ? snapshot.data!.addres!.city!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      "Province".toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!.town !=
                                                    null
                                            ? snapshot.data!.addres!.town!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .cityUser
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!
                                                        .commune !=
                                                    null
                                            ? snapshot.data!.addres!.commune!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .township
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!.quater !=
                                                    null
                                            ? snapshot.data!.addres!.quater!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .quarter
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!.street !=
                                                    null
                                            ? snapshot.data!.addres!.street!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .avenu
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.addres != null &&
                                                snapshot.data!.addres!.number !=
                                                    null
                                            ? snapshot.data!.addres!.number!
                                            : "Pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .numberHouse
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        15.heightBox,
                        SizedBox(
                          width: 500,
                          child: Expander(
                            key: expanderKey1,
                            contentBackgroundColor: APPSTYLE.WHITE_COLOR,
                            header: Text(
                              "Contacts".toUpperCase(),
                              style: APPSTYLE.body1,
                            ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.phone != null &&
                                                snapshot.data!.phone!.number !=
                                                    null &&
                                                snapshot.data!.phone!.number !=
                                                    null
                                            ? "${snapshot.data?.phone?.code} (0) ${snapshot.data?.phone?.number}"
                                            : "pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .phoneNumberUser
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.contact != null &&
                                                snapshot.data!.contact!.email !=
                                                    null
                                            ? snapshot.data!.contact!.email!
                                            : "pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .adresseMail
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.contact != null &&
                                                snapshot.data!.contact!
                                                        .internet !=
                                                    null
                                            ? snapshot.data!.contact!.internet!
                                            : "pas definit",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .website
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        15.heightBox,
                        SizedBox(
                          width: 500,
                          child: Expander(
                            key: expanderKey2,
                            contentBackgroundColor: APPSTYLE.WHITE_COLOR,
                            header: Text(
                              "Compte bancaire".toUpperCase(),
                              style: APPSTYLE.body1,
                            ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.bank != null &&
                                                snapshot.data!.bank!.bankname !=
                                                    null
                                            ? snapshot.data!.bank!.bankname!
                                            : "BANK NAME",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .bank
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.bank != null &&
                                                snapshot.data!.bank!
                                                        .accountName !=
                                                    null
                                            ? snapshot.data!.bank!.accountName!
                                            : "Intitule du compte",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .accountName
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.bank != null &&
                                                snapshot.data!.bank!
                                                        .accountNumber !=
                                                    null
                                            ? snapshot
                                                .data!.bank!.accountNumber!
                                            : "Numero de compte",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .accountNumber
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                                const CustomDivider(),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.bank != null &&
                                                snapshot.data!.bank!.code !=
                                                    null
                                            ? snapshot.data!.bank!.code!
                                            : "Code swift",
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    Text(
                                      AppLocalizations.of(context)!
                                          .accountNumber
                                          .toUpperCase(),
                                      style: APPSTYLE.body2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        15.heightBox,
                        containerInfo(
                          child: InkWell(
                            onTap: () {
                              customershowDialog(
                                context,
                                child: EditGeneralInformation(
                                  enterprise: snapshot.data,
                                ),
                              ).then((value) {
                                setState(() {});
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .editEnterpriseInformation
                                            .toUpperCase(),
                                        style: APPSTYLE.body1,
                                      ),
                                    ),
                                    10.widthBox,
                                    const Icon(
                                      Iconsax.arrow_right,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("erreur : ${snapshot.error}");
          } else {
            return Container();
          }
        });
  }
}

Widget containerInfo({Widget? child}) {
  return Container(
    width: 500,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    decoration: BoxDecoration(
      color: APPSTYLE.WHITE_COLOR,
      borderRadius: BorderRadius.circular(4),
    ),
    child: child,
  );
}
