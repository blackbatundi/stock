import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

bool? isEditEntreprise;

class DetailEmploye extends StatefulWidget {
  const DetailEmploye({super.key});

  @override
  State<DetailEmploye> createState() => _DetailEmployeState();
}

class _DetailEmployeState extends State<DetailEmploye> {
  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: Expanded(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: APPSTYLE.WHITE_COLOR,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/employe.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                10.heightBox,
                Text(
                  "john doe",
                  style: APPSTYLE.body1,
                ),
                10.heightBox,
                Text(
                  "@john.doe",
                  style: APPSTYLE.body3,
                ),
                30.heightBox,
                containerInfo(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John doe",
                        style: APPSTYLE.body1,
                      ),
                      const CustomDivider(),
                      Text(
                        "John.doe@gmail",
                        style: APPSTYLE.body1,
                      ),
                      const CustomDivider(),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Vendeur ",
                              style: APPSTYLE.body1,
                            ),
                          ),
                          10.widthBox,
                          Text(
                            AppLocalizations.of(context)!.privilege,
                            style: APPSTYLE.body1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                15.heightBox,
                containerInfo(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "+243 (0) 987 654 321",
                        style: APPSTYLE.body1,
                      ),
                      const CustomDivider(),
                      Text(
                        "12, av. les volcans, q. le volcan, c. de Goma, ville de Goma, Congo-kinshasa ",
                        style: APPSTYLE.body1,
                      ),
                    ],
                  ),
                ),
                60.heightBox,
                containerInfo(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context)!.suspendre,
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
  }
}

Widget containerInfo({Widget? child}) {
  return Container(
    width: 500,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    decoration: BoxDecoration(
      color: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
      borderRadius: BorderRadius.circular(10),
    ),
    child: child,
  );
}
