import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/page/pages/app/app_architecture.dart';
import 'package:cobiz/page/pages/enterprise/employe/show_employe.dart';
import 'package:cobiz/page/pages/enterprise/generalite/genral_information.dart';
import 'package:cobiz/page/pages/enterprise/produit/show_all_product.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class EnterprisePage extends StatefulWidget {
  const EnterprisePage({super.key});

  @override
  State<EnterprisePage> createState() => _EnterprisePageState();
}

class _EnterprisePageState extends State<EnterprisePage> {
  AppBloc? menuBloc;
  int nemuIndex = 0;
  @override
  void initState() {
    menuBloc = AppBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
        bloc: menuBloc,
        builder: (context, state) {
          if (state is SUCCESS) {
            nemuIndex = state.value;
          }
          return ArchitectureApp(
            header: Container(
              margin: const EdgeInsets.only(right: 15, top: 30, bottom: 30),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: APPSTYLE.BORDER_COLOR,
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
                  borderRadius: BorderRadius.circular(10),
                  color: APPSTYLE.WHITE_COLOR),
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 15,
              ),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          enterPriseMenu(
                            index: 0,
                            selectedIndex: nemuIndex,
                            icon: Iconsax.home,
                          ),
                          enterPriseMenu(
                            index: 1,
                            selectedIndex: nemuIndex,
                            icon: Iconsax.tag,
                          ),
                          enterPriseMenu(
                            index: 2,
                            selectedIndex: nemuIndex,
                            icon: Iconsax.people,
                          ),
                          enterPriseMenu(
                            index: 3,
                            selectedIndex: nemuIndex,
                            icon: Iconsax.home,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            content: Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 30, top: 30, bottom: 30),
              child: NavigationBody(
                index: nemuIndex,
                children: [
                  const GeneralInformation(),
                  const ShowProduct(),
                  const ShowEmploye(),
                  Container(),
                ],
              ),
            ),
          );
        });
  }

  Widget numberInfo({int? number}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      decoration: BoxDecoration(
        color: APPSTYLE.DESABLE_COLOR,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "$number",
        style: APPSTYLE.body1,
      ),
    );
  }

  Widget enterPriseMenu(
      {int? index, int? selectedIndex, Widget? child, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: mat.InkWell(
        onTap: () {
          menuBloc!.add(USERCHANGEMENU(index!));
        },
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 250,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: index == selectedIndex
                ? APPSTYLE.PRIMARY_COLOR_DARK
                : APPSTYLE.WHITE_COLOR,
          ),
          child: Icon(
            icon,
            color: index == selectedIndex ? APPSTYLE.WHITE_COLOR : null,
          ),
        ),
      ),
    );
  }
}
