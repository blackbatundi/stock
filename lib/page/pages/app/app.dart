import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/page/pages/enterprise/enterprise.dart';
import 'package:cobiz/page/pages/enterprise/profile/profile.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:cobiz/page/pages/app/app_architecture.dart';
import 'package:cobiz/page/pages/app/shared.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppBloc? menuBloc;
  @override
  void initState() {
    menuBloc = AppBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocBuilder<AppBloc, AppState>(
          bloc: menuBloc,
          builder: (context, state) {
            int nemuIndex = 0;
            if (state is SUCCESS) {
              nemuIndex = state.value;
            }
            return ArchitectureApp(
              header: Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 15, top: 30, bottom: 30),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        menuBloc!.add(USERCHANGEMENU(8));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
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
                              border: Border.all(
                                width: 3,
                                color: APPSTYLE.WHITE_COLOR,
                              ),
                              color: APPSTYLE.WHITE_COLOR,
                              image: const DecorationImage(
                                image: AssetImage("assets/images/user.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "David B.",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "admin",
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: APPSTYLE.SECOND_TEXT_COLOR,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CustomDivider(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            AppPageShared.menuIcons.length,
                            (index) => AppPageShared.menuApp(
                              index: index,
                              selectedIndex: nemuIndex,
                              onPressed: () {
                                menuBloc!.add(USERCHANGEMENU(index));
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              content: NavigationBody(
                index: nemuIndex,
                children: [
                  const EnterprisePage(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  const Profile(),
                ],
              ),
            );
          }),
    ));
  }
}
