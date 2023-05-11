import 'package:cobiz/page/pages/enterprise/profile/edit_user_mail.dart';
import 'package:cobiz/page/pages/enterprise/profile/edit_user_profile.dart';
import 'package:cobiz/services/shared/utils/logout.dart';
import 'package:cobiz/services/shared/utils/utils_function.dart';

import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: APPSTYLE.ON_CONTAINER_COLOR,
                      border: Border.all(
                        color: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      Iconsax.edit,
                      size: 14,
                    ),
                  ),
                ),
              ],
            ),
            10.heightBox,
            Text(
              "John Doe",
              style: APPSTYLE.body1,
            ),
            5.heightBox,
            Text(
              "@username",
              style: APPSTYLE.body1Seconted,
            ),
            30.heightBox,
            containerInfo(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: APPSTYLE.body1,
                  ),
                  const CustomDivider(),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (context) => const EditUserMail(),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "TECH@UPPER-Z.COM",
                            style: APPSTYLE.body1,
                          ),
                        ),
                        10.widthBox,
                        const Icon(
                          Iconsax.arrow_right,
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Super admin",
                          style: APPSTYLE.body1,
                        ),
                      ),
                      10.widthBox,
                      Text(
                        AppLocalizations.of(context)!.privilege,
                        style: APPSTYLE.body1Seconted,
                      )
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
            15.heightBox,
            containerInfo(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: Colors.transparent,
                        builder: (context) => const EditUserProfile(),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!
                                .editEnterpriseInformation,
                            style: APPSTYLE.body1,
                          ),
                        ),
                        10.widthBox,
                        const Icon(
                          Iconsax.arrow_right,
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  InkWell(
                    onTap: () {
                      customershowDialog(
                        context,
                        child: const LogOut(),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.logout,
                            style: APPSTYLE.body1,
                          ),
                        ),
                        10.widthBox,
                        const Icon(
                          Iconsax.logout,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget containerInfo({Widget? child}) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: APPSTYLE.WHITE_COLOR,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
